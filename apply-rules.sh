#!/usr/bin/env bash
set -euo pipefail

ORG="ZhanfgBuild"
API_VERSION="2026-03-10"
APPLY=0

if [ "${1:-}" = "--apply" ]; then
  APPLY=1
elif [ -n "${1:-}" ]; then
  echo "Usage: bash apply-rules.sh [--apply]" >&2
  exit 2
fi

for cmd in gh jq; do
  command -v "$cmd" >/dev/null 2>&1 || { echo "missing: $cmd" >&2; exit 1; }
done

gh auth status >/dev/null
login="$(gh api user --jq .login)"
echo "GitHub login: $login"

repo_map="$(mktemp)"
trap 'rm -f "$repo_map"' EXIT

gh api "repos/$ORG/.github/contents/repo-map.json"   -H "X-GitHub-Api-Version: $API_VERSION"   --jq .content | tr -d '\n' | base64 -d > "$repo_map"

core_repos=(".github" "manifest" "android_kernel_common_oneplus_sm8750")

is_core() {
  local n="$1"
  local x
  for x in "${core_repos[@]}"; do
    [ "$n" = "$x" ] && return 0
  done
  return 1
}

payload_guarded() {
  jq -n '{
    name:"zfg-guard-default",
    target:"branch",
    enforcement:"active",
    conditions:{ref_name:{include:["~DEFAULT_BRANCH"],exclude:[]}},
    rules:[
      {type:"deletion"},
      {type:"non_fast_forward"}
    ]
  }'
}

payload_core() {
  jq -n '{
    name:"zfg-core-default",
    target:"branch",
    enforcement:"active",
    conditions:{ref_name:{include:["~DEFAULT_BRANCH"],exclude:[]}},
    rules:[
      {type:"deletion"},
      {type:"non_fast_forward"},
      {
        type:"pull_request",
        parameters:{
          allowed_merge_methods:["merge","squash","rebase"],
          dismiss_stale_reviews_on_push:false,
          require_code_owner_review:false,
          require_last_push_approval:false,
          required_approving_review_count:0,
          required_review_thread_resolution:true
        }
      }
    ]
  }'
}

upsert_ruleset() {
  local repo="$1" profile="$2" name payload id endpoint method
  if [ "$profile" = "core" ]; then
    name="zfg-core-default"
    payload="$(payload_core)"
  else
    name="zfg-guard-default"
    payload="$(payload_guarded)"
  fi

  echo "[$profile] $ORG/$repo"

  if [ "$APPLY" -eq 0 ]; then
    echo "  DRY-RUN"
    return 0
  fi

  id="$(gh api "repos/$ORG/$repo/rulesets"       -H "X-GitHub-Api-Version: $API_VERSION" 2>/dev/null       | jq -r --arg n "$name" '.[] | select(.name==$n) | .id'       | head -n1 || true)"

  if [ -n "$id" ]; then
    method="PUT"
    endpoint="repos/$ORG/$repo/rulesets/$id"
  else
    method="POST"
    endpoint="repos/$ORG/$repo/rulesets"
  fi

  printf '%s\n' "$payload" | gh api --method "$method" "$endpoint"     -H "Accept: application/vnd.github+json"     -H "X-GitHub-Api-Version: $API_VERSION"     --input - >/dev/null

  gh api "repos/$ORG/$repo/rulesets"     -H "X-GitHub-Api-Version: $API_VERSION"     --jq ".[] | select(.name==\"$name\") | {id,name,enforcement,target}"
}

# Critical public repositories.
for repo in "${core_repos[@]}"; do
  upsert_ruleset "$repo" core
done

# All public source-base and upstream-fork repos, plus yuezhou-pop-infra.
jq -r '
  .repositories
  | to_entries[]
  | select(.value.visibility=="public")
  | select(
      .value.class=="source-base"
      or .value.class=="upstream-fork"
      or .key=="yuezhou-pop-infra"
    )
  | .key
' "$repo_map" | sort -u | while IFS= read -r repo; do
  is_core "$repo" && continue
  upsert_ruleset "$repo" guarded
done

echo
if [ "$APPLY" -eq 0 ]; then
  echo "Dry-run complete. Re-run with: bash apply-rules.sh --apply"
else
  echo "Ruleset application complete."
fi

echo "NOTE: workbench-platform remains private and is intentionally not changed."

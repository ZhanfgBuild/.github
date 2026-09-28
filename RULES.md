# Repository protection policy

This file describes the protection profiles prepared for ZhanfgBuild.

## Core

Repositories:

- `.github`
- `manifest`
- `android_kernel_common_oneplus_sm8750`

Default-branch policy:

- block branch deletion;
- block force pushes;
- require changes to enter through pull requests;
- require review conversations to be resolved;
- require **0 external approvals** so a solo maintainer is not deadlocked.

This deliberately does not require signed commits or fixed CI contexts yet. Those controls should only be added after workflow names are stable.

## Guarded

Applies to public repositories classified as `source-base` or `upstream-fork`, plus `yuezhou-pop-infra`.

Default-branch policy:

- block branch deletion;
- block force pushes.

Direct fast-forward pushes remain possible. This keeps upstream synchronization practical.

## Private repositories

`workbench-platform` remains private. The current GitHub plan does not expose repository rulesets/branch protection for this private repository. Do not make it public just to gain this feature.

## Apply

The OpenAI GitHub integration used to author this control plane does not have GitHub Administration write permission, so it cannot create rulesets itself.

From an owner/admin `gh` session:

```sh
bash apply-rules.sh
bash apply-rules.sh --apply
```

The first command is a dry-run. The second performs idempotent create/update operations.

Required token permission for repository rulesets: **Administration: write**.

After applying, verify with:

```sh
gh api repos/ZhanfgBuild/manifest/rulesets
gh api repos/ZhanfgBuild/android_kernel_common_oneplus_sm8750/rulesets
gh api repos/ZhanfgBuild/sing-box/rulesets
```

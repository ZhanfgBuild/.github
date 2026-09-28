# Contributing to ZhanfgBuild

This is the organization-wide default contribution guide. A repository-local guide overrides this file.

## Before changing code

1. Confirm which repository class you are working in. See [repo-map.json](./repo-map.json).
2. Keep changes scoped. Migration, upstream sync, refactoring, and feature work should not be mixed without a clear reason.
3. Do not commit credentials, private device data, signing material, access tokens, or unreleased private artifacts.

## Repository classes

### Infrastructure / internal engineering

Prefer small changes with explicit rollback paths. Changes affecting deployment, CI, packaging, release metadata, manifests, or credentials must include validation evidence.

### Source bases

Preserve source history and branch intent. Avoid broad cleanup unrelated to the target change. For kernel/ROM source work, document the branch and build or manifest validation performed.

### Upstream / reference forks

Preserve upstream attribution. Prefer contributing generally useful fixes upstream first. Local-only patches should explain why they are intentionally carried downstream.

### Prototypes

Fast iteration is acceptable, but do not present unverified experiments as stable or production-ready.

## Pull requests

A useful pull request should state:

- what changed;
- why it changed;
- what was tested;
- what remains unverified;
- whether the change affects upstream tracking, CI, releases, manifests, or external services.

Use the repository's own test commands when documented. Do not claim device/runtime validation unless it was actually performed.

## Commit messages

Prefer a short bracketed subject followed by a compact body when context is useful.

Example:

```text
[Build] Update source remote

Point the build workflow at the organization-owned source repository.

Test:
- workflow YAML parsed
- source URL resolved
```

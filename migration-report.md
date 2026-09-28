# Repository Migration Report

Status: **COMPLETE**  
Closed: **2026-09-29**

## Summary

| Original targets | Transferred to ZhanfgBuild | Intentional keeps | Deferred | Failed |
|---:|---:|---:|---:|---:|
| 44 | 41 | 3 | 0 | 0 |

The migration scope was revised by explicit user decision at closure. The following repositories intentionally remain under `Zhanfg` and are not considered incomplete:

- `Zhanfg/axymorrsen-site`
- `Zhanfg/research-report-builder`
- `Zhanfg/mihomo`

No Cloudflare, CircleCI, Worker, webhook, or other production cutover is required for these three repositories under the closed scope.

## Completed migration groups

- Build / standalone infrastructure, including `workbench-platform` and `yuezhou-pop-infra`.
- OnePlus 13 common-kernel source migration.
- OnePlus 6 kernel source and ROM/device/vendor/framework source cluster.
- ROM manifest ownership rewrite to `https://github.com/ZhanfgBuild`.
- Reference/upstream repository migrations included in the final scope.
- Organization profile initialization under `ZhanfgBuild/.github`.

## Validation notes

- `OnePlus13-kernel` no longer contains the old canonical `Zhanfg/android_kernel_common_oneplus_sm8750` reference.
- `abk-op6-kernel` no longer contains the old canonical `Zhanfg/kernel_oneplus_sdm845` reference.
- `ZhanfgBuild/manifest/snippets/oneplus6.xml` uses `remote="zhanfgbuild"` and `fetch="https://github.com/ZhanfgBuild"`.
- The three intentional keeps remain in the personal namespace by design.

## Closure

This migration is complete under the revised scope. Do not schedule the three intentional keeps for migration unless the user explicitly reopens the project scope.

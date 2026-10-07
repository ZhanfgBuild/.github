<p align="center"><img src="./assets/header.svg" alt="ZhanfgBuild" width="100%"></p>

<p align="center"><code>source bases</code>&nbsp;&nbsp;·&nbsp;&nbsp;<code>build & release</code>&nbsp;&nbsp;·&nbsp;&nbsp;<code>tracked upstreams</code>&nbsp;&nbsp;·&nbsp;&nbsp;<code>engineering infrastructure</code></p>

**ZhanfgBuild is an engineering annex, not a product catalog.**  
It holds the source trees, CI/release plumbing, upstream-derived code, and support repositories that sit behind work published from [Zhanfg](https://github.com/Zhanfg).

### source-base lines

- **OnePlus 13 / SM8750** — [android_kernel_common_oneplus_sm8750](https://github.com/ZhanfgBuild/android_kernel_common_oneplus_sm8750) carries the custom common-kernel line and upstream-resolution workflows used by the OnePlus 13 kernel project.
- **OnePlus 6 / SDM845** — kernel, device, hardware, and vendor source repositories are kept as branch-sensitive source bases for current Android/Lineage work.
- **CNB / Android platform work** — `frameworks_base`, `packages_apps_Settings`, `packages_apps_Evolver`, `vendor_evolution`, and `manifest` are maintained as source-base repositories rather than standalone products.

### tracked upstreams

Repositories such as **ReSukiSU, KernelSU, sing-box, dae, JamesDSP, rqlite, esp-idf** and others remain explicitly upstream-derived. Local work should preserve attribution and keep downstream deltas reviewable.

### boundary

The machine-readable authority is [repo-map.json](../repo-map.json). It classifies each repository as:

`infra` · `source-base` · `upstream-fork` · `prototype` · `internal`

That distinction is intentional: a mirrored or modified upstream repository is not presented as original project ownership, and a successful build is not treated as runtime validation.

<p align="center"><sub><a href="https://github.com/Zhanfg">main project surface</a> · <a href="https://axymorrsen.cc">axymorrsen.cc</a></sub></p>

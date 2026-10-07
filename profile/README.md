<p align="center"><img src="./assets/header.svg" alt="ZhanfgBuild — engineering annex" width="100%"></p>

<p align="center"><sub>source trees / build plumbing / downstream maintenance / release support</sub></p>

**ZhanfgBuild is the engineering annex behind the public project surface.** It is not a second product catalogue. Repositories here are source bases, build systems, tracked upstreams, or support infrastructure; original ownership is never implied for upstream-derived work.

## 01 / source bases

| Line | Role | Boundary |
| --- | --- | --- |
| [android_kernel_common_oneplus_sm8750](https://github.com/ZhanfgBuild/android_kernel_common_oneplus_sm8750) | OnePlus 13 custom common-kernel line | common tree only; the full OKI build remains controlled by [Zhanfg/OnePlus13-kernel](https://github.com/Zhanfg/OnePlus13-kernel) |
| OnePlus 6 / SDM845 repositories | kernel, device, hardware and vendor source bases | branch-sensitive Android/Lineage engineering inputs |
| Android platform repositories | framework/settings/evolution source bases | maintained as source trees rather than standalone products |

The OnePlus 13 common tree currently contains explicit upstream-resolution workflows and documents unresolved vendor/common integration. A newer local kernel version is not presented as proof of full device compatibility.

## 02 / build & support

This namespace also carries CI/release plumbing, packaging infrastructure, internal builders and project-specific support repositories. Private tooling stays private; public pages describe the boundary, not its credentials or restricted inputs.

A build passing CI means the build path passed. It does **not** become a runtime, device, or release validation claim unless the owning project records that evidence separately.

## 03 / tracked upstreams

Public repositories such as <code>ReSukiSU</code>, <code>KernelSU</code>, <code>OhMyKeymint</code>, <code>sing-box</code>, <code>dae</code>, <code>JamesDSP</code>, <code>rqlite</code> and <code>esp-idf</code> are upstream-derived or downstream-maintained workspaces. Their upstream licenses, history and attribution remain authoritative.

Local changes should stay reviewable against upstream instead of being presented as independent project ownership.

## 04 / control plane

[repo-map.json](../repo-map.json) is the machine-readable classification authority for this organization. It distinguishes:

<code>infra</code> · <code>source-base</code> · <code>upstream-fork</code> · <code>prototype</code> · <code>internal</code>

The public project surface remains [Zhanfg](https://github.com/Zhanfg). This organization exists to keep source provenance, build mechanics and supporting engineering separate from user-facing project identity.

<p align="center"><sub><a href="https://github.com/Zhanfg">projects</a> · <a href="https://axymorrsen.cc">axymorrsen.cc</a></sub></p>

<!-- organization profile, reviewed against repo-map and repository structure on 2026-10-07 -->

<p align="center"><img src="./assets/header.svg" alt="ZhanfgBuild — engineering annex" width="100%"></p>

**ZhanfgBuild is the engineering annex behind the public project surface.**  
It is intentionally not presented as a product catalogue: this organization holds source bases, build/release infrastructure, tracked upstreams, and supporting implementation repositories.

## ANNEX / 01 — repository lanes

<table>
<tr>
<td width="50%" valign="top">
<sub>SOURCE BASES</sub><br>
Kernel, device, vendor, framework and manifest trees where branch intent and history matter more than presentation.<br><br>
Examples: OnePlus 13 / SM8750 common-kernel work, OnePlus 6 / SDM845 device and kernel trees, Android framework/application source bases.
</td>
<td width="50%" valign="top">
<sub>TRACKED UPSTREAMS</sub><br>
Repositories derived from external projects remain visibly attributed and are kept for reference, synchronization or explicit downstream patches.<br><br>
Examples include KernelSU/ReSukiSU lines, sing-box, dae, JamesDSP, ESP-IDF and other upstream-derived sources.
</td>
</tr>
<tr>
<td width="50%" valign="top">
<sub>BUILD / RELEASE</sub><br>
CI, packaging, builders, deployment support and reproducibility plumbing used by projects published elsewhere.
</td>
<td width="50%" valign="top">
<sub>INTERNAL / PROTOTYPE</sub><br>
Private engineering support, restricted inputs and isolated experiments. Their presence here is not a claim that they are public products.
</td>
</tr>
</table>

## ANNEX / 02 — public routes

| Engineering surface | Public project surface |
| --- | --- |
| [android_kernel_common_oneplus_sm8750](https://github.com/ZhanfgBuild/android_kernel_common_oneplus_sm8750) | [OnePlus13-kernel](https://github.com/Zhanfg/OnePlus13-kernel) |
| JamesDSP / audio source-base work | [RootlessViPER4Android](https://github.com/Zhanfg/RootlessViPER4Android) |
| KernelPatch / root source work | [PatchNest](https://github.com/Zhanfg/PatchNest) and [KernelPatch-Public](https://github.com/Zhanfg/KernelPatch-Public) |
| build/release and infrastructure support | projects under [Zhanfg](https://github.com/Zhanfg) |

The organization may also contain standalone upstream/reference repositories with no corresponding product surface. Those should be read as sources or maintained forks, not as original ownership.

## ANNEX / 03 — control plane

The machine-readable classification lives in [`repo-map.json`](../repo-map.json). It distinguishes:

`infra` · `source-base` · `upstream-fork` · `prototype` · `internal`

That boundary is deliberate:

- source history and attribution are preserved;
- a modified fork is still a fork;
- build success is not described as runtime/device validation;
- private/restricted repositories are not promoted through the public profile;
- public project claims should be made from the project repository that owns them.

<p align="center"><sub><a href="https://github.com/Zhanfg">public project surface</a> · <a href="https://axymorrsen.cc">axymorrsen.cc</a></sub></p>

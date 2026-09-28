<h1 align="center">ZhanfgBuild</h1>

<p align="center">
  Engineering workspace for Axymorrsen · Android/Linux · Build systems · Source bases · Infrastructure
</p>

ZhanfgBuild is the engineering workspace behind projects maintained under [Zhanfg](https://github.com/Zhanfg). It holds build and release infrastructure, source bases, upstream/reference forks, deployment support and other repositories that are useful to engineering work but do not need to live in the personal project namespace.

## Scope

- **Build & release** — reproducible CI, packaging, validation and release support.
- **Android / kernel sources** — source bases, device trees, manifests and low-level integration repositories.
- **Upstream / reference work** — maintained forks, patch staging and compatibility experiments with attribution preserved.
- **Infrastructure** — website/content pipelines, deployment support and internal-facing engineering services.
- **Prototypes & tooling** — hardware prototypes, build helpers and supporting utilities.

## Repository boundary

| Space | Intended contents |
| --- | --- |
| [Zhanfg](https://github.com/Zhanfg) | Maintained products, representative research and user-facing projects |
| **ZhanfgBuild** | Engineering infrastructure, source bases, upstream/reference forks and supporting repositories |

The repository reorganization is complete under the maintained boundary above. Repositories intentionally left under `Zhanfg` remain there by design rather than as unfinished migration work.

## Engineering principles

- Preserve upstream history and attribution.
- Prefer reproducible builds and explicit validation.
- Keep infrastructure separate from user-facing project identity.
- Avoid credentials, private device data and unreleased material in public repositories.
- Treat documentation, CI and rollback paths as part of the implementation.

Main profile: [github.com/Zhanfg](https://github.com/Zhanfg) · Project hub: [axymorrsen.cc](https://axymorrsen.cc)

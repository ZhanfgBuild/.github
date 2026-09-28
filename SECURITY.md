# Security Policy

This is the organization-wide default security policy. Repository-local security guidance overrides it.

## Reporting a vulnerability

Use GitHub's **Report a vulnerability** / private vulnerability reporting flow from the repository's Security tab when it is available.

If private vulnerability reporting is not available, do **not** publish credentials, private keys, exploit payloads, sensitive device data, or detailed reproduction steps in a public issue. Open only a minimal issue requesting a private reporting channel, without sensitive details.

## Secrets and private data

Never commit:

- API tokens or session credentials;
- signing keys, certificates with private material, or recovery secrets;
- private device identifiers or dumps containing personal data;
- production environment files;
- unreleased private artifacts.

If a secret is accidentally committed, rotate/revoke it first. Removing it from the latest commit is not sufficient.

## Scope

Security fixes should be narrowly scoped and should not be bundled with unrelated refactors. For upstream forks, determine whether the vulnerability belongs upstream and preserve attribution when carrying or backporting a fix.

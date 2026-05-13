# quantaa.net Version

Site: quantaa.net
Current approved version: v0.1.0-build001
Current sandbox build: none
Next planned sandbox build: v0.2.0-build001
Last approved/base commit: 238fe6f
Deployment status: local clean baseline, not pushed yet
GitHub remote: git@github.com:mslepikas/quantaa-net.git

## Versioning Convention

Format:

    SITE vMAJOR.MINOR.PATCH-buildNN

Examples:

    quantaa.net v0.2.0-build001

Meaning:

    MAJOR = major redesign, product direction change, or site architecture change
    MINOR = new page, new product section, new workflow, or meaningful content block
    PATCH = typo, small copy edit, link fix, image fix, or layout tweak
    buildNN = human approval/build order number for this site

## Approval Rules

Sandbox work can be proposed by Hermes/Q.

Real repo commits require:

1. git status review
2. git diff review
3. Danno review
4. user approval

Public push/deploy requires a separate explicit approval.

Example approval phrases:

    APPROVE: quantaa.net v0.2.0-build001 for real repo commit only
    APPROVE: push quantaa.net v0.2.0-build001 to GitHub for Cloudflare deploy

## Domain / Hosting Note

Domain transfer expected 2026-05-16. Cloudflare is DNS/host provider.

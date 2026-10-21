# Power Platform Solution Packaging

This directory is reserved for a validated, tenant-exported solution ZIP and its release notes.

## Current support statement

As of 21 October 2026, Microsoft's public **Export and import agents using solutions** article states that it applies to the standard harness. These reference agents use the GitHub Copilot harness. Therefore this repository does not claim that a Power Platform solution ZIP is a supported portable format for these agents until the capability is confirmed and tested in the source and target tenants.

The supported portable assets currently included are:

- complete agent instructions and declarative settings;
- suggested prompts;
- `SKILL.md` files/skill packages;
- connector configuration guidance;
- evaluation suites.

## If solution export is supported in your tenant

1. Create an unmanaged custom solution in a non-production environment.
2. Add both agents and all required objects.
3. Remove tenant-specific secrets and current connection values.
4. Export an unmanaged package for makers and, if required, a managed package for controlled deployment.
5. Import into a clean test environment.
6. Reconfigure authentication and connection references.
7. Verify instructions, skills, knowledge, tools, memory, model, prompts, and channels.
8. Run the full evaluation suites before publication.
9. Record package hash, version, source environment type, import result, missing components, and post-import steps.

Only after a successful clean-environment import should a ZIP be attached to a GitHub Release. Never commit environment IDs, tenant URLs, credentials, connection values, or confidential data.

## Manual installation fallback

Use `docs/installation.md`. It is harness-aligned, transparent, and does not depend on undocumented solution behavior.

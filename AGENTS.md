# EdgePress agent-definition file for Codex CLI

This file tells Codex CLI which agents this plugin ships. Codex reads
`agents/*.md` files as subagent definitions; the `edgepress-workflow`
subagent handles multi-step content workflows (>30 API calls or >3
minutes) — bulk imports, series drafting/publishing, site-wide sweeps.

See `agents/edgepress-workflow.md` for the subagent's exact contract.

## Env vars required

- `EDGEPRESS_TENANT` — tenant hostname, e.g. `blog.edgepress.cc`
- `EDGEPRESS_TOKEN` — personal access token starting with `epat_`

Set both before invoking any `/edgepress:*` command.

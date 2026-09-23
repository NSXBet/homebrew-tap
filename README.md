# homebrew-tap

Homebrew tap for NSXBet tools.

## Usage

```bash
brew tap nsxbet/tap
brew install nsxbet/tap/tasks
brew install --cask nsxbet/tap/vela-ishtar

# private-source formulas (agent-slack, conduit-agent) need a token with repo access
HOMEBREW_GITHUB_API_TOKEN=$(gh auth token) brew install nsxbet/tap/conduit-agent
```

The `tilt-dev` / `tip` formulas are refreshed automatically by a scheduled
workflow in this repo that polls public [NSXBet/tilt](https://github.com/NSXBet/tilt)
releases every 15 minutes — no cross-repo tokens involved.

## Available

| Name | Kind | Description |
|------|------|-------------|
| `vela-ishtar` | cask | Premium macOS menu bar app for AI Hub (LLM gateway) spend |
| `aihub` | formula | The AI coding agent built for the terminal |
| `tasks` | formula | Task tracker CLI (`tk`) for durable, git-synced project issues — self-updates with `tk update` |
| `agent-slack` | formula | Slack automation CLI for AI agents (installs require a `HOMEBREW_GITHUB_API_TOKEN` with access to the private source repo) |
| `conduit-agent` | formula | Conduit agent + `conduitctl` CLI, with a `brew services` LaunchAgent (installs require a `HOMEBREW_GITHUB_API_TOKEN` with access to the private source repo) |
| `tilt-dev` | formula | [tilt](https://github.com/NSXBet/tilt) fork (NSXBet) — latest tagged release, command `tilt`. Shadows homebrew-core's `tilt-dev` |
| `tilt-dev@x.y.z` | formula | Pinned tagged tilt releases (keg-only; `brew link --overwrite nsxbet/tap/tilt-dev@x.y.z` to use) |
| `tip` | formula | Tilt fork nightly from `master`, command `tip`. Auto-updated on every push to master |

cask "agent-slack" do
  version :latest
  sha256 :no_check

  arch arm: "darwin-arm64", intel: "darwin-x64"

  url "https://github.com/NSXBet/agent-slack/releases/latest/download/agent-slack-#{arch}",
      using:    :github_private_repo,
      owner:    "NSXBet",
      repo:     "agent-slack"

  name "agent-slack"
  desc "Slack automation CLI for AI agents"
  homepage "https://github.com/NSXBet/agent-slack"

  binary "agent-slack-#{arch}", target: "agent-slack"
end

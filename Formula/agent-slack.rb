class AgentSlack < Formula
  desc "Slack automation CLI for AI agents"
  homepage "https://github.com/NSXBet/agent-slack"
  license "MIT"
  version "0.6.2"

  on_arm do
    url "https://api.github.com/repos/NSXBet/agent-slack/releases/assets/391623801",
        headers: ["Accept: application/octet-stream"]
  end

  on_intel do
    url "https://api.github.com/repos/NSXBet/agent-slack/releases/assets/391623800",
        headers: ["Accept: application/octet-stream"]
  end

  sha256 :no_check

  # Requires: export HOMEBREW_GITHUB_API_TOKEN=$(gh auth token)
  # Add to your shell profile for persistence.

  def install
    arch = Hardware::CPU.arm? ? "darwin-arm64" : "darwin-x64"
    bin.install "agent-slack-#{arch}" => "agent-slack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-slack --version")
  end
end

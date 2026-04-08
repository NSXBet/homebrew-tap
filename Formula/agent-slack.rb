class AgentSlack < Formula
  desc "Slack automation CLI for AI agents"
  homepage "https://github.com/NSXBet/agent-slack"
  license "MIT"
  version "0.6.2"

  arch = Hardware::CPU.arm? ? "darwin-arm64" : "darwin-x64"

  url "https://github.com/NSXBet/agent-slack/releases/download/v0.6.2/agent-slack-#{arch}",
      headers: [
        "Accept: application/octet-stream",
        "Authorization: bearer #{`gh auth token`.strip}",
      ]
  sha256 :no_check

  def install
    arch = Hardware::CPU.arm? ? "darwin-arm64" : "darwin-x64"
    bin.install "agent-slack-#{arch}" => "agent-slack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-slack --version")
  end
end

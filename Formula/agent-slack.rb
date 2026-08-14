class AgentSlack < Formula
  desc "Slack automation CLI for AI agents"
  homepage "https://github.com/NSXBet/agent-slack"
  license "MIT"
  version "0.6.2"

  on_arm do
    url "https://api.github.com/repos/NSXBet/agent-slack/releases/assets/391623801",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}",
        ]
    sha256 "0f3406b96f7b60846891d161b4d2d444f4d0871924414c6c412348a9af67243f"
  end

  on_intel do
    url "https://api.github.com/repos/NSXBet/agent-slack/releases/assets/391623800",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}",
        ]
    sha256 "e1f361346f7b4c4d4a15f3674af1a43b92622bd78af95ef22c734253ab583cff"
  end

  def install
    odie "HOMEBREW_GITHUB_API_TOKEN is required to download agent-slack release assets" if ENV["HOMEBREW_GITHUB_API_TOKEN"].to_s.empty?

    arch = Hardware::CPU.arm? ? "darwin-arm64" : "darwin-x64"
    bin.install "agent-slack-#{arch}" => "agent-slack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-slack --version")
  end
end

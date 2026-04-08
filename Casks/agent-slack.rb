cask "agent-slack" do
  version :latest
  sha256 :no_check

  arch arm: "darwin-arm64", intel: "darwin-x64"

  name "agent-slack"
  desc "Slack automation CLI for AI agents"
  homepage "https://github.com/NSXBet/agent-slack"

  url do
    release = GitHub.get_release("NSXBet", "agent-slack", "latest")
    asset = release.fetch("assets").find { |a| a["name"] == "agent-slack-#{arch}" }
    raise "No asset for #{arch}" unless asset

    [asset.fetch("url"), header: [
      "Accept: application/octet-stream",
      "Authorization: bearer #{GitHub::API.credentials}",
    ]]
  end

  binary "agent-slack-#{arch}", target: "agent-slack"
end

cask "conduit" do
  version "1.3.0-beta.16"
  sha256 "c2c358cc526df1397d25a3dbb88b33b8c0b163224315c6161b3418230cc2e5b9"

  # NSXBet/conduit-agent is a private repo: the HTML releases/download URL
  # 404s even with a token, so use the API asset endpoint. Asset id for
  # ConduitHost-1.3.0-beta.16-macos-universal.dmg; bump together with version.
  url "https://api.github.com/repos/NSXBet/conduit-agent/releases/assets/589322511",
      header: [
        "Accept: application/octet-stream",
        "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}",
      ]
  name "Conduit"
  desc "Conduit VPN menubar app"
  homepage "https://github.com/NSXBet/conduit-agent"

  # Signed with Developer ID, notarized, and stapled in CI; no quarantine
  # workaround needed.
  app "ConduitHost.app"

  depends_on macos: ">= :ventura"
end

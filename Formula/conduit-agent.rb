class ConduitAgent < Formula
  desc "Conduit agent and conduitctl CLI"
  homepage "https://github.com/NSXBet/conduit-agent"
  version "1.2.0"

  on_arm do
    url "https://api.github.com/repos/NSXBet/conduit-agent/releases/assets/581838483",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}",
        ]
    sha256 "6a639e81b426aa4c2be6089b3efbe774c3cf32fe8006ba0484aa468d2722bae4"

    resource "conduitctl" do
      url "https://api.github.com/repos/NSXBet/conduit-agent/releases/assets/581838506",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}",
          ]
      sha256 "6df6740ad2f808a19e6be472610f1cb296e394b64a73d6140a07f70b8a36bd0a"
    end
  end

  on_intel do
    url "https://api.github.com/repos/NSXBet/conduit-agent/releases/assets/581838476",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}",
        ]
    sha256 "6ba0e061afaf2c6c36aa99a343da54d06481ddc18e59f12627158daa316cefcc"

    resource "conduitctl" do
      url "https://api.github.com/repos/NSXBet/conduit-agent/releases/assets/581838503",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}",
          ]
      sha256 "8d932941666eb14451d12207dc95cb52c4543b96b0c5ff08b55fa721df1bc1e5"
    end
  end

  depends_on :macos

  def install
    arch = Hardware::CPU.arm? ? "arm64" : "amd64"
    bin.install "conduit-agent-darwin-#{arch}" => "conduit-agent"
    resource("conduitctl").stage do
      bin.install "conduitctl-darwin-#{arch}" => "conduitctl"
    end
  end

  service do
    run opt_bin/"conduit-agent"
    keep_alive true
    log_path var/"log/conduit-agent.log"
    error_log_path var/"log/conduit-agent.log"
  end

  test do
    assert_predicate bin/"conduit-agent", :executable?
    assert_predicate bin/"conduitctl", :executable?
  end
end

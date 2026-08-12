cask "vela-ishtar" do
  version "1.0.2"
  sha256 "bd0ca84d8861bf44df7a1dfaa60aa3f82530eef59d861749240644703a7f6ff4"

  url "https://github.com/NSXBet/vela-ishtar/releases/download/v#{version}/VelaIshtar-#{version}.zip"
  name "Vela Ishtar"
  desc "Menu bar AI Hub spend tracker"
  homepage "https://github.com/NSXBet/vela-ishtar"

  app "Vela Ishtar.app"

  # The app is ad-hoc signed and not notarized; strip quarantine on install
  # so Gatekeeper doesn't block the first launch with a malware dialog.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Vela Ishtar.app"]
  end
end

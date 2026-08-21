cask "vela-ishtar" do
  version "1.0.3"
  sha256 "8f341b1c4573ba5ace263be11547854a2d72804fa8e9c3d7df30a3b35bce77bd"

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

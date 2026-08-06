cask "vela-ishtar" do
  version "0.1.1"
  sha256 "bcc7eee66af9f2ff52bedac597e4d223b823f1afb1ad3f4bcc2c5c2b74df4e8b"

  url "https://github.com/NSXBet/vela-ishtar/releases/download/v#{version}/VelaIshtar-#{version}.zip"
  name "Vela Ishtar"
  desc "Premium macOS menu bar app for AI Hub (LLM gateway) spend"
  homepage "https://github.com/NSXBet/vela-ishtar"

  app "Vela Ishtar.app"

  caveats <<~EOS
    Vela Ishtar is ad-hoc signed. On first launch, right-click the app and
    choose Open, or run:
      xattr -cr "/Applications/Vela Ishtar.app"
  EOS
end
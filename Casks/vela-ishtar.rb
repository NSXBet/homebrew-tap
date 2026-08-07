cask "vela-ishtar" do
  version "0.2.0"
  sha256 "1ac85ae47f0a21a9b5f4de6bb6aeda715444c9db9c3848ff0a8f72740db8fe75"

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

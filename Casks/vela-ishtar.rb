cask "vela-ishtar" do
  version "0.3.4"
  sha256 "3277c7a36903be1435efbddace2d93267673c6b705f772cc002a1d812e4973d6"

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
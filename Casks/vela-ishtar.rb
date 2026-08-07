cask "vela-ishtar" do
  version "0.3.4"
  sha256 "bd7c2c3bd31531bda1de42efeb35e5800b6e92c2983325e0857b1ab5ff2fcf76"

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
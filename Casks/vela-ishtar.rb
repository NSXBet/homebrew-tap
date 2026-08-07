cask "vela-ishtar" do
  version "0.3.1"
  sha256 "fbb448c81774ab7b10af0e8eed515da0e75ce8092a304ea25ee6d47c1bf5c1c5"

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

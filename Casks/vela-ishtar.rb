cask "vela-ishtar" do
  version "0.4.3"
  sha256 "7db044b5c25469080827a630802c5e2f09b5b49d995099137ea3e8d3e0f554f4"

  url "https://github.com/NSXBet/vela-ishtar/releases/download/v#{version}/VelaIshtar-#{version}.zip"
  name "Vela Ishtar"
  desc "Menu bar AI Hub spend tracker"
  homepage "https://github.com/NSXBet/vela-ishtar"

  app "Vela Ishtar.app"
end
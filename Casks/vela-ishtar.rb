cask "vela-ishtar" do
  version "0.4.3"
  sha256 "55fe177ff50ce5dce7cbfb43b87e18574c76f1becde5d913146562ac48af9ecc"

  url "https://github.com/NSXBet/vela-ishtar/releases/download/v#{version}/VelaIshtar-#{version}.zip"
  name "Vela Ishtar"
  desc "Menu bar AI Hub spend tracker"
  homepage "https://github.com/NSXBet/vela-ishtar"

  app "Vela Ishtar.app"
end

cask "vela-ishtar" do
  version "1.0.0"
  sha256 "6a12591bf1a50b9be506972a2a1780d2124ae9ff3219ad7371ecc3db26807f7b"

  url "https://github.com/NSXBet/vela-ishtar/releases/download/v#{version}/VelaIshtar-#{version}.zip"
  name "Vela Ishtar"
  desc "Menu bar AI Hub spend tracker"
  homepage "https://github.com/NSXBet/vela-ishtar"

  app "Vela Ishtar.app"
end

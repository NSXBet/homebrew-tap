cask "vela-ishtar" do
  version "0.4.0"
  sha256 "8e85e66052e129181e7617553ec229592620fb3bd024f35bdac43047b9cd0252"

  url "https://github.com/NSXBet/vela-ishtar/releases/download/v#{version}/VelaIshtar-#{version}.zip"
  name "Vela Ishtar"
  desc "Menu bar AI Hub spend tracker"
  homepage "https://github.com/NSXBet/vela-ishtar"

  app "Vela Ishtar.app"
end
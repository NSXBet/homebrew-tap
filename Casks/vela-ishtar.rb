cask "vela-ishtar" do
  version "0.4.1"
  sha256 "7627d0d9582fc5bae3857fa2addab6273b19cc6d5f8a92a2ed8780713d605786"

  url "https://github.com/NSXBet/vela-ishtar/releases/download/v#{version}/VelaIshtar-#{version}.zip"
  name "Vela Ishtar"
  desc "Menu bar AI Hub spend tracker"
  homepage "https://github.com/NSXBet/vela-ishtar"

  app "Vela Ishtar.app"
end
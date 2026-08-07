cask "vela-ishtar" do
  version "0.5.0"
  sha256 "4333e35835af19e0420a171f8e0682ac2ee33f2042010983d17046d120e10574"

  url "https://github.com/NSXBet/vela-ishtar/releases/download/v#{version}/VelaIshtar-#{version}.zip"
  name "Vela Ishtar"
  desc "Menu bar AI Hub spend tracker"
  homepage "https://github.com/NSXBet/vela-ishtar"

  app "Vela Ishtar.app"
end

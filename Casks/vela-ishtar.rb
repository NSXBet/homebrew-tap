cask "vela-ishtar" do
  version "0.5.1"
  sha256 "53b25cf8b1c804b0da9c8f4fd0d1e8b7f9a037cffd353acfcbbf0058cc313832"

  url "https://github.com/NSXBet/vela-ishtar/releases/download/v#{version}/VelaIshtar-#{version}.zip"
  name "Vela Ishtar"
  desc "Menu bar AI Hub spend tracker"
  homepage "https://github.com/NSXBet/vela-ishtar"

  app "Vela Ishtar.app"
end

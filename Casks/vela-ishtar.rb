cask "vela-ishtar" do
  version "0.4.2"
  sha256 "2cc9941e1bd783dc1a7e11f0f12112ad5fb7aaf6adfffb1c4de1c3e54ace3267"

  url "https://github.com/NSXBet/vela-ishtar/releases/download/v#{version}/VelaIshtar-#{version}.zip"
  name "Vela Ishtar"
  desc "Menu bar AI Hub spend tracker"
  homepage "https://github.com/NSXBet/vela-ishtar"

  app "Vela Ishtar.app"
end
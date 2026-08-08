cask "vela-ishtar" do
  version "1.0.1"
  sha256 "073ce30e899a1e947432804b48ee30f2819fd2449383a6332364f03b030b4965"

  url "https://github.com/NSXBet/vela-ishtar/releases/download/v#{version}/VelaIshtar-#{version}.zip"
  name "Vela Ishtar"
  desc "Menu bar AI Hub spend tracker"
  homepage "https://github.com/NSXBet/vela-ishtar"

  app "Vela Ishtar.app"
end

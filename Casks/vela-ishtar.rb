cask "vela-ishtar" do
  version "1.0.5"
  sha256 "ef318d57b7416683b0134e5bb152f3cae2d541aff236a8213916bd049d178a8f"

  url "https://github.com/NSXBet/vela-ishtar/releases/download/v#{version}/VelaIshtar-#{version}.zip"
  name "Vela Ishtar"
  desc "Menu bar AI Hub spend tracker"
  homepage "https://github.com/NSXBet/vela-ishtar"

  app "Vela Ishtar.app"

  # The app is ad-hoc signed and not notarized; strip quarantine on install
  # so Gatekeeper doesn't block the first launch with a malware dialog.
  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Vela Ishtar.app"]
  end
end

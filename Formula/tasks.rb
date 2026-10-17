# typed: false
# frozen_string_literal: true

class Tasks < Formula
  desc "Task tracker CLI for durable, git-synced project issues"
  homepage "https://github.com/NSXBet/tasks"
  version "0.6.0"

  # Self-contained `tk` binaries from the GitHub release. Each platform
  # downloads the raw binary under its asset name (tk-<target>), so install
  # renames it to `tk`.
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/NSXBet/tasks/releases/download/v0.6.0/tk-darwin-x64"
      sha256 "029ab4f441c1012800c664a125255fc484cf959d538973000b2596a90c164a85"

      def install
        bin.install "tk-darwin-x64" => "tk"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/NSXBet/tasks/releases/download/v0.6.0/tk-darwin-arm64"
      sha256 "94706b69892cdcbaff77ba18aa494d25aafabef87fd75a3fb3990c2ea43411e0"

      def install
        bin.install "tk-darwin-arm64" => "tk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/NSXBet/tasks/releases/download/v0.6.0/tk-linux-x64"
      sha256 "91175f4a458e077e399ab784784e7c76b78aeb2bd0268ce9e34b08e67c7ecd1d"

      def install
        bin.install "tk-linux-x64" => "tk"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/NSXBet/tasks/releases/download/v0.6.0/tk-linux-arm64"
      sha256 "ca97d7ebd72e1c329113a0325c86e530da05b2b86b35316e5c3cf93d3c42d476"

      def install
        bin.install "tk-linux-arm64" => "tk"
      end
    end
  end

  test do
    assert_match "tk version", shell_output("#{bin}/tk version")
  end
end

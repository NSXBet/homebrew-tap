# typed: false
# frozen_string_literal: true

class Tasks < Formula
  desc "Task tracker CLI for durable, git-synced project issues"
  homepage "https://github.com/NSXBet/tasks"
  version "0.3.0"

  # Self-contained `tk` binaries from the GitHub release. Each platform
  # downloads the raw binary under its asset name (tk-<target>), so install
  # renames it to `tk`.
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/NSXBet/tasks/releases/download/v0.3.0/tk-darwin-x64"
      sha256 "512226b08c46ed40be83aafabc3b5f081baf5ff873de9a8cf7ec02597bd6f0b0"

      def install
        bin.install "tk-darwin-x64" => "tk"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/NSXBet/tasks/releases/download/v0.3.0/tk-darwin-arm64"
      sha256 "2a11c9abc25d27695211eaf4da7182b791c301dae37d93c78b103451d322fcfc"

      def install
        bin.install "tk-darwin-arm64" => "tk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/NSXBet/tasks/releases/download/v0.3.0/tk-linux-x64"
      sha256 "86db038892d8327f58218892933559b39adf2da3cb5fe92d647a7d6f93feba07"

      def install
        bin.install "tk-linux-x64" => "tk"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/NSXBet/tasks/releases/download/v0.3.0/tk-linux-arm64"
      sha256 "2a38a86f67fa6f6e3851349ab3ce73d9c7610698682d1302b5590b0fb5f01af3"

      def install
        bin.install "tk-linux-arm64" => "tk"
      end
    end
  end

  test do
    assert_match "tk version", shell_output("#{bin}/tk version")
  end
end

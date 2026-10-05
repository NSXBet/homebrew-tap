# typed: false
# frozen_string_literal: true

class Tasks < Formula
  desc "Task tracker CLI for durable, git-synced project issues"
  homepage "https://github.com/NSXBet/tasks"
  version "0.5.0"

  # Self-contained `tk` binaries from the GitHub release. Each platform
  # downloads the raw binary under its asset name (tk-<target>), so install
  # renames it to `tk`.
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/NSXBet/tasks/releases/download/v0.5.0/tk-darwin-x64"
      sha256 "e25355b8c0105f325eeb5118e51a93042ba2c669c7a3fd061f209afa3e079c5a"

      def install
        bin.install "tk-darwin-x64" => "tk"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/NSXBet/tasks/releases/download/v0.5.0/tk-darwin-arm64"
      sha256 "d0c39d309e7da8e361691cabeaabf1daba4e4a66d5e1a16498aa503c4c4aed8f"

      def install
        bin.install "tk-darwin-arm64" => "tk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/NSXBet/tasks/releases/download/v0.5.0/tk-linux-x64"
      sha256 "384acd82cc8745e3fa14fefbc8ed9aaf2d5e6eb7f91a52962847ba8e83ceef54"

      def install
        bin.install "tk-linux-x64" => "tk"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/NSXBet/tasks/releases/download/v0.5.0/tk-linux-arm64"
      sha256 "fee16a140e5f7874d96d53207862138a1fb4a5228a47901e426f1bc568af6cf5"

      def install
        bin.install "tk-linux-arm64" => "tk"
      end
    end
  end

  test do
    assert_match "tk version", shell_output("#{bin}/tk version")
  end
end

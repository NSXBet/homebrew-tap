# typed: false
# frozen_string_literal: true

class Tasks < Formula
  desc "Task tracker CLI for durable, git-synced project issues"
  homepage "https://github.com/NSXBet/tasks"
  version "0.4.0"

  # Self-contained `tk` binaries from the GitHub release. Each platform
  # downloads the raw binary under its asset name (tk-<target>), so install
  # renames it to `tk`.
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/NSXBet/tasks/releases/download/v0.4.0/tk-darwin-x64"
      sha256 "5be9f867b16d992529edf04ec0462295186be3260bfa3030abc8f0c7339e0ae0"

      def install
        bin.install "tk-darwin-x64" => "tk"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/NSXBet/tasks/releases/download/v0.4.0/tk-darwin-arm64"
      sha256 "a2d73b7e4e100ba6ff9634e9f296efe975130a285a5fba17054cd927a895c34a"

      def install
        bin.install "tk-darwin-arm64" => "tk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/NSXBet/tasks/releases/download/v0.4.0/tk-linux-x64"
      sha256 "3b8f0d5e5571451e41c5cc7c98b82d0a1072b391939ed56948e9fcdfe6b8bf32"

      def install
        bin.install "tk-linux-x64" => "tk"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/NSXBet/tasks/releases/download/v0.4.0/tk-linux-arm64"
      sha256 "34df4077cfba8a1519a45e4ca05fcf538d7fc7128c3679eac381d651b66ec423"

      def install
        bin.install "tk-linux-arm64" => "tk"
      end
    end
  end

  test do
    assert_match "tk version", shell_output("#{bin}/tk version")
  end
end

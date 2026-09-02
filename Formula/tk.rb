class Tk < Formula
  desc "Task tracker CLI for durable, git-synced project issues"
  homepage "https://github.com/NSXBet/tasks"
  version "0.1.0"

  on_arm do
    url "https://github.com/NSXBet/tasks/releases/download/v0.1.0/tk-darwin-arm64"
    sha256 "a1b3fb7e4fc2eabd2a57d1ab2e4f74c8e0a5cdaa7ea779105b66ba1e1d2a9ce8"
  end
  on_intel do
    url "https://github.com/NSXBet/tasks/releases/download/v0.1.0/tk-darwin-x64"
    sha256 "e302ef8862fd637dfe45a720e8735e74399925dbbd0d397d4b02de35868d0cbf"
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk - Task Tracker", shell_output("#{bin}/tk --help")
  end
end
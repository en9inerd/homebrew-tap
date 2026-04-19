class Tgeraser < Formula
  desc "Delete all your Telegram messages without admin privileges"
  homepage "https://github.com/en9inerd/go-tgeraser"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.2.0/tgeraser-darwin-arm64"
      sha256 "202828905b3d3378f2f62fdc0fec3154e8ccdf977648afde4a4259290811a19f"
    else
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.2.0/tgeraser-darwin-amd64"
      sha256 "26bd3dd98fd3fb8c17821302062a6f8654d619bdac8d52650339427c4d6c0822"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.2.0/tgeraser-linux-arm64"
      sha256 "6c91592b2f497be0ab825403c0842273a6c9d9889f1599884f616b3146a9192e"
    else
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.2.0/tgeraser-linux-amd64"
      sha256 "87578559f6f61ac69c53ecbb3480d4a4313015fe8034b5dad6844a6a73b46de6"
    end
  end

  def install
    binary = Dir["tgeraser*"].first
    bin.install binary => "tgeraser"
  end

  test do
    assert_match "tgeraser version", shell_output("#{bin}/tgeraser --version")
  end
end

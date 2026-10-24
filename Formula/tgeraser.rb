class Tgeraser < Formula
  desc "Delete all your Telegram messages without admin privileges"
  homepage "https://github.com/en9inerd/go-tgeraser"
  license "MIT"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.4.1/tgeraser-darwin-arm64"
      sha256 "4307bd0cdb4a8817b42edd8a86c107d72cf010510bd566fc20c9b21e7e2dd2d9"
    else
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.4.1/tgeraser-darwin-amd64"
      sha256 "ef1b9930d3f53284546c73871aa89f27d9889bdae4e09524a84fe68c364b9c46"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.4.1/tgeraser-linux-arm64"
      sha256 "bbc669bfc8c6da418ecc11926bc0adf7e277211cce5a88248f5c7de0ad123ddd"
    else
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.4.1/tgeraser-linux-amd64"
      sha256 "15f59087037b26f5b3baacf773674d8a09c370e4b37116bc7bfac56f7810a430"
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

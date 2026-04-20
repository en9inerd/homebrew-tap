class Tgeraser < Formula
  desc "Delete all your Telegram messages without admin privileges"
  homepage "https://github.com/en9inerd/go-tgeraser"
  license "MIT"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.2.1/tgeraser-darwin-arm64"
      sha256 "29cad926ffd167aa744d77f18b0d5b862cb6afc4b53d6a7c94e45c2f7bef13f4"
    else
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.2.1/tgeraser-darwin-amd64"
      sha256 "8fa97c04ac5ac2e1d2907b8d2efb9588abc5e8ba78edb422853d643e632e688f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.2.1/tgeraser-linux-arm64"
      sha256 "33ebc2f3bc92e65d1024c689a795fca3dad0ff57d1a27181644ee8f0d077e5b1"
    else
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.2.1/tgeraser-linux-amd64"
      sha256 "504a7fa2c39f7588ece7a93b77cb8b8937a611d6728c850392ff12cd443cb716"
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

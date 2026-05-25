class Tgeraser < Formula
  desc "Delete all your Telegram messages without admin privileges"
  homepage "https://github.com/en9inerd/go-tgeraser"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.3.0/tgeraser-darwin-arm64"
      sha256 "9edb82b61e25959720df073656df9971f8ec5151f9ac56f68869b990aef32a13"
    else
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.3.0/tgeraser-darwin-amd64"
      sha256 "3dd11cda26aa1f94bcd659971877e4d1dee230dc1269f888de22c89cc04b223b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.3.0/tgeraser-linux-arm64"
      sha256 "75fb86f4557d8700d0323352370ee465dd1063b93d1da778d843ebc41d7e8e80"
    else
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.3.0/tgeraser-linux-amd64"
      sha256 "d5e7abc1e335850afc7eec8ba7326b06fe9d00c3e20987b8e0d0914fabeae33a"
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

class Tgeraser < Formula
  desc "Delete all your Telegram messages without admin privileges"
  homepage "https://github.com/en9inerd/go-tgeraser"
  license "MIT"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.2.3/tgeraser-darwin-arm64"
      sha256 "2ba8434a7cb13b73b6e76e81d213303aeaccefc9c68f5ae6ce6161e168393159"
    else
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.2.3/tgeraser-darwin-amd64"
      sha256 "e53844bc7bf848505a6c00a13bc906c0593c449cb4a7f719bbc1422d1b9c2ccc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.2.3/tgeraser-linux-arm64"
      sha256 "38e0a7ec0e0f796a58b670fc6b71d4b0aab30c59504641798ee29a7cb11f90f4"
    else
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.2.3/tgeraser-linux-amd64"
      sha256 "bbe7ea10cd9bbcd6b9902016bb1eadb24ca9b52f1a9cddcbbdefbeec5f3a07f7"
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

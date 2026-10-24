class Tgeraser < Formula
  desc "Delete all your Telegram messages without admin privileges"
  homepage "https://github.com/en9inerd/go-tgeraser"
  license "MIT"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.4.2/tgeraser-darwin-arm64"
      sha256 "5403fdcd9e4674f006e51dee538b2bfeea879735de74e208bb7ac5da03175a5e"
    else
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.4.2/tgeraser-darwin-amd64"
      sha256 "7d7c4bd55fd9305cd414b08cb84d9955146d69f97859faee9eae7eebfbb07f8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.4.2/tgeraser-linux-arm64"
      sha256 "4fa418d6a849492c9254477bb3534e55162c9ddaa66cd9ce92301eebbef140df"
    else
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.4.2/tgeraser-linux-amd64"
      sha256 "018c8152fe113ab993bcb0fac2f80e6e6db5350d54bb90830c536139e4985c42"
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

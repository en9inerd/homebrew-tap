class Tgeraser < Formula
  desc "Delete all your Telegram messages without admin privileges"
  homepage "https://github.com/en9inerd/go-tgeraser"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.4.0/tgeraser-darwin-arm64"
      sha256 "d9db94d874f7a922158a0e6f403bc390ad72f1533a4a93ecee71d694a2615190"
    else
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.4.0/tgeraser-darwin-amd64"
      sha256 "590d2f27ec544db53f6e1c28d12ed4893cf44d243b391652c2da408ff6efa0e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.4.0/tgeraser-linux-arm64"
      sha256 "a502cf4e709dca0256effdcabace8f22def5ae651fe7429602dce38d596a45ca"
    else
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.4.0/tgeraser-linux-amd64"
      sha256 "3ae2f97d6bae9d3c500ffa11dce4f4e1b997aa41d82473962ab9b2f544afaad9"
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

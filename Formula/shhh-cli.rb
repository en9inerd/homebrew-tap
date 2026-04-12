class ShhhCli < Formula
  desc "CLI for shhh E2E encrypted channels"
  homepage "https://github.com/en9inerd/shhh"
  license "MIT"
  version "0.3.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.6/shhh-cli-darwin-arm64"
      sha256 "20db08c348aeeba47fe97495526d3f1f13bee8fcaf4acfd4f1f216a64dfcce53"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.6/shhh-cli-darwin-amd64"
      sha256 "94c9cb08aa27db16e2b8c2c53d085f8e7b7f6fa96ae84137e1e05c99f2180751"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.6/shhh-cli-linux-arm64"
      sha256 "914ad045ec644916bc3a85acf095a71016d6a61339c1ec5c1ca8d6475341d556"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.6/shhh-cli-linux-amd64"
      sha256 "c134a9856a5d3687a73f58e20d297d557e0eb1e6719ca63f85c8ecc3e237167a"
    end
  end

  def install
    binary = Dir["shhh-cli*"].first
    bin.install binary => "shhh-cli"
  end

  test do
    assert_match "shhh-cli version", shell_output("#{bin}/shhh-cli --version")
  end
end

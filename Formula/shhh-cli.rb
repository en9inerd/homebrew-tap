class ShhhCli < Formula
  desc "CLI for shhh E2E encrypted channels"
  homepage "https://github.com/en9inerd/shhh"
  license "MIT"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.4.1/shhh-cli-darwin-arm64"
      sha256 "830ff9d2d7969381f0170b55023f0be4cd922cb7b9e00a14145c31c0e56a979c"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.4.1/shhh-cli-darwin-amd64"
      sha256 "1014342041982bab87c819b4f79af127473fffbe7ad6587bfeb3d6f667638f6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.4.1/shhh-cli-linux-arm64"
      sha256 "67cbc7de6073e33c98853e250d7b708f5d3332d9ecfaf40c5dcc2a40c7d18bff"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.4.1/shhh-cli-linux-amd64"
      sha256 "524d1398ad9480f8c9f1ff796055713604209a3d22202f3ebc3eb32d4d7645b8"
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

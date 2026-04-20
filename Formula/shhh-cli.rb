class ShhhCli < Formula
  desc "CLI for shhh E2E encrypted channels"
  homepage "https://github.com/en9inerd/shhh"
  license "MIT"
  version "0.3.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.10/shhh-cli-darwin-arm64"
      sha256 "e298f01ad1350497962b7c60cacab1704ec8b08ce0d87e66c2a5bfce24cdb641"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.10/shhh-cli-darwin-amd64"
      sha256 "7749993cfc59b1faff6a689c0d37586b92daf54cc1baff747a3f732e2f6a4a5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.10/shhh-cli-linux-arm64"
      sha256 "e608ed8bb2a49951a134487cbd1e7b4831ca931d9ba7c06d31203fc03b398849"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.10/shhh-cli-linux-amd64"
      sha256 "7edd662fb0206eba639dd049d5edc49a33021aff225000e152444d4e96b7838e"
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

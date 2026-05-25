class ShhhCli < Formula
  desc "CLI for shhh E2E encrypted channels"
  homepage "https://github.com/en9inerd/shhh"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.4.0/shhh-cli-darwin-arm64"
      sha256 "ce4effc0d0f8aff63897bb654111dd8af6d055bc12ef6045100c7a836a10edde"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.4.0/shhh-cli-darwin-amd64"
      sha256 "9ea222a1586e384114f83fab27e42dbee048843ff52eb3f03108aa562d7b01ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.4.0/shhh-cli-linux-arm64"
      sha256 "71104e9e6740311d21086380fc23f591f68d3440bee70e99eda4d1ea3b8f737b"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.4.0/shhh-cli-linux-amd64"
      sha256 "7b13c811320ef7e14646aefe1274311451d77fed09f1891049baeb90dc0053ff"
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

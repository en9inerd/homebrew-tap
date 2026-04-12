class ShhhCli < Formula
  desc "CLI for shhh E2E encrypted channels"
  homepage "https://github.com/en9inerd/shhh"
  license "MIT"
  version "0.3.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.5/shhh-cli-darwin-arm64"
      sha256 "038dc2da8a17b8767181cdc710e215d2ed799629cfe9415a16ef4179a890ec5c"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.5/shhh-cli-darwin-amd64"
      sha256 "5870131ef0b075ebf7d6c1520dc20819c0198a5a50020dcc1a1fe79fc04df1e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.5/shhh-cli-linux-arm64"
      sha256 "8a37de8f351c691683db65dbe836005f9fedc8230f0b0c31d12f9b8054dda8ad"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.5/shhh-cli-linux-amd64"
      sha256 "07e27471989cac3ac8ed2ddc4d0c875864fa6471a4c9e54318f4572f99ed2bcd"
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

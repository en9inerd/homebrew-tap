class ShhhCli < Formula
  desc "CLI for shhh E2E encrypted channels"
  homepage "https://github.com/en9inerd/shhh"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.0/shhh-cli-darwin-arm64"
      sha256 "00445a764f1b7d910eafdd9fe855375906db5d2d5e7404740f4f3cb048f0f2d8"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.0/shhh-cli-darwin-amd64"
      sha256 "1c48465363a27828c22a7c31d843ab43eed7ea0c4b4d0ec7a9910c4c4fc5b22b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.0/shhh-cli-linux-arm64"
      sha256 "67728ad64790eb132d64bc4710a258058c6679aeec6bfd5894395108a53c56a2"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.0/shhh-cli-linux-amd64"
      sha256 "695f7c86af147a92544d1eb73169401f3f4dd16c0b2a143d6d75817309c65690"
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

class ShhhCli < Formula
  desc "CLI for shhh E2E encrypted channels"
  homepage "https://github.com/en9inerd/shhh"
  license "MIT"
  version "0.3.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.8/shhh-cli-darwin-arm64"
      sha256 "4f0d163d587056bb8c257094932dfe1df8be9390bc65f9ebff6aaa4733212dcd"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.8/shhh-cli-darwin-amd64"
      sha256 "dc68e1cd82125f92f7fb88bc10ec52d90c53bb091d74782fedc8d77b798aafcc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.8/shhh-cli-linux-arm64"
      sha256 "02126bf99c217f5c8c005642f85533d6e1ccb44a4fd3478f58472d6fe98d8bdf"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.8/shhh-cli-linux-amd64"
      sha256 "5161684124a3e143b443daa7228ffc8eb6c6fb0ea89383438788097068fceca6"
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

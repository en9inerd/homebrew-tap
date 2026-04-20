class Tgeraser < Formula
  desc "Delete all your Telegram messages without admin privileges"
  homepage "https://github.com/en9inerd/go-tgeraser"
  license "MIT"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.2.2/tgeraser-darwin-arm64"
      sha256 "09bcefe263a99d5bd336b3df4def304f838c384dbcf504c17ae86fbf1f121643"
    else
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.2.2/tgeraser-darwin-amd64"
      sha256 "b2f91d652c9a539d34407c8da9879b07e9e0aef5dfab48171d8d87af8b784ce4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.2.2/tgeraser-linux-arm64"
      sha256 "0ea843434b60ea888ae2ac55de600a777dbfa40079bbb52dea57a04ee69aacfa"
    else
      url "https://github.com/en9inerd/go-tgeraser/releases/download/v0.2.2/tgeraser-linux-amd64"
      sha256 "1bbfef5109e418e1d9b70d6aa629789d9597f90d42e65f78ab274b3d25bb127a"
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

class Slop < Formula
  desc "Code quality scanner - catches patterns linters miss"
  homepage "https://github.com/en9inerd/slop"
  license "MIT"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/slop/releases/download/v0.2.3/slop_aarch64-macos"
      sha256 "d859ed04262d92829a3e9cd4e9456d088c1f97ba4f5e88efc88b26f215070ce7"
    else
      url "https://github.com/en9inerd/slop/releases/download/v0.2.3/slop_x86_64-macos"
      sha256 "2cf7638ae2fb9f13562f44cf4e7166ab35ce69e9221e79baf63d165412be4621"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/slop/releases/download/v0.2.3/slop_aarch64-linux-musl"
      sha256 "b0e8cc604559a3da75c5acc826a6f440aaf0ebf2b0c9e9f35c0781dc1f2467a8"
    else
      url "https://github.com/en9inerd/slop/releases/download/v0.2.3/slop_x86_64-linux-musl"
      sha256 "f6c02a157520483a1ba5c8fbf225dfaddf013ae38ebe37ef691dfeb09afb7b3d"
    end
  end

  def install
    binary = Dir["slop*"].first
    bin.install binary => "slop"
  end

  test do
    assert_match "slop", shell_output("#{bin}/slop --help")
  end
end

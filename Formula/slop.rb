class Slop < Formula
  desc "Code quality scanner — catches patterns linters miss"
  homepage "https://github.com/en9inerd/slop"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/slop/releases/download/v0.1.0/slop_aarch64-macos"
      sha256 "f77e4acd6828e4249351c49d31e59bfb57e511f2b562b02d130c98e0fabb05bb"
    else
      url "https://github.com/en9inerd/slop/releases/download/v0.1.0/slop_x86_64-macos"
      sha256 "354165ca9ea52b5d8639e588509d3d112796c3de62ddd8f81e590f33ee4e20c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/slop/releases/download/v0.1.0/slop_aarch64-linux-musl"
      sha256 "2f2313d3d7b8f1d3306d0eb4c05be91eb383530f6f0e56ad3747998e6a608bca"
    else
      url "https://github.com/en9inerd/slop/releases/download/v0.1.0/slop_x86_64-linux-musl"
      sha256 "86db66964ce8a02cd8acf9f92d4e800a325c6d088eddd0071cc746baf6deb3d9"
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

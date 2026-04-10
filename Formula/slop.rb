class Slop < Formula
  desc "Code quality scanner — catches patterns linters miss"
  homepage "https://github.com/en9inerd/slop"
  license "MIT"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/slop/releases/download/v0.2.1/slop_aarch64-macos"
      sha256 "3991c91651a2b5c78a3c7283b23df5da4402f25e4e9d8fa7eb2a656033024e46"
    else
      url "https://github.com/en9inerd/slop/releases/download/v0.2.1/slop_x86_64-macos"
      sha256 "7e72553d9812c8a46a487284a0bc26c9ec34072ae879f3a6a705e4d0f78437d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/slop/releases/download/v0.2.1/slop_aarch64-linux-musl"
      sha256 "6cd23aaab125b0cd183215bb4989f24662cfa41baa9963d044439a8b7ca89284"
    else
      url "https://github.com/en9inerd/slop/releases/download/v0.2.1/slop_x86_64-linux-musl"
      sha256 "febe70eff17415fa88b655b651ddd119583dbe197de479dcc97ec0a6020d6a87"
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

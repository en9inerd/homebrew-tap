class J2z < Formula
  desc "Convert Jekyll markdown posts to Zola markdown posts"
  homepage "https://github.com/en9inerd/j2z"
  license "MIT"
  version "1.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/j2z/releases/download/v1.3.4/j2z-darwin-arm64"
      sha256 "b8407ea0ea473a46102c036d0651ea8bbcc9dfb20cccb802c5cb80414faf0b26"
    else
      url "https://github.com/en9inerd/j2z/releases/download/v1.3.4/j2z-darwin-amd64"
      sha256 "7c9761bc674821f54e8df5728c5e8bb5aa959f6cd114883dfb13d368f5d3c68b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/j2z/releases/download/v1.3.4/j2z-linux-arm64"
      sha256 "7a6fa8cd41d2a8cebfa53ed209846da6c06d836ea00da6c49b16320396afce46"
    else
      url "https://github.com/en9inerd/j2z/releases/download/v1.3.4/j2z-linux-amd64"
      sha256 "24a13af82018b1e6fe67b2827cd947fafed89292a7bc36edf476274b386826d0"
    end
  end

  def install
    binary = Dir["j2z*"].first
    bin.install binary => "j2z"
  end

  test do
    assert_match "j2z version", shell_output("#{bin}/j2z --version")
  end
end

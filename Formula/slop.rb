class Slop < Formula
  desc "Code quality scanner — catches patterns linters miss"
  homepage "https://github.com/en9inerd/slop"
  license "MIT"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/slop/releases/download/v0.2.2/slop_aarch64-macos"
      sha256 "66738b7d40cdd8e4c75e778afcb3f44a0861c7258457009542144bd4b82c6092"
    else
      url "https://github.com/en9inerd/slop/releases/download/v0.2.2/slop_x86_64-macos"
      sha256 "cbf39d4c6d1722a34c04d4b2e387beab6b38b771a93cfe82e8146b8a5242cba3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/slop/releases/download/v0.2.2/slop_aarch64-linux-musl"
      sha256 "3e1ec4c13ae1b77237c6c6cfa81da3cfebf42f732ce99a8715124cab636b4345"
    else
      url "https://github.com/en9inerd/slop/releases/download/v0.2.2/slop_x86_64-linux-musl"
      sha256 "b6678c4294263eafaa72f5f7dfa8b74e85a72b00f6d31bbefa2fc662691cd8a4"
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

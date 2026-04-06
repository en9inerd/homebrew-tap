class Slop < Formula
  desc "AI slop detector — finds AI-typical code defects using information theory"
  homepage "https://github.com/en9inerd/slop"
  license "MIT"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/slop/releases/download/v0.0.1/slop_aarch64-macos"
      sha256 "c1eccd6769f851f2e486048d52bb4740036542999ffd4ad887790ac0b938c043"
    else
      url "https://github.com/en9inerd/slop/releases/download/v0.0.1/slop_x86_64-macos"
      sha256 "bec46295eac1b1ead4c96413122f9507336de416cc3e245a7775b9f89c04ead2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/slop/releases/download/v0.0.1/slop_aarch64-linux-musl"
      sha256 "0d9531c0580cf2bee6c391d0e1557fff10460bb5ae2db0e23c6445832e38437a"
    else
      url "https://github.com/en9inerd/slop/releases/download/v0.0.1/slop_x86_64-linux-musl"
      sha256 "ff61107de58cf7f407041ac44a4f1cc69ae980b8daa4cfba23c56029fea69f9d"
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

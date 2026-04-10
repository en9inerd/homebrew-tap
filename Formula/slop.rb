class Slop < Formula
  desc "Code quality scanner — catches patterns linters miss"
  homepage "https://github.com/en9inerd/slop"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/slop/releases/download/v0.2.0/slop_aarch64-macos"
      sha256 "a20c31f653a08e7e7047b4feef9ff8ef47a646e04a830f25ebad45568840d4f7"
    else
      url "https://github.com/en9inerd/slop/releases/download/v0.2.0/slop_x86_64-macos"
      sha256 "1d324a75ed0254d7fcb394b14a2f3234fddb07e2a3d7d13cf2f1ac11e74a44a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/slop/releases/download/v0.2.0/slop_aarch64-linux-musl"
      sha256 "405f005a3690b1b8401ba220cbeebc0e10070be99c73c077d84726eb1ef10bc9"
    else
      url "https://github.com/en9inerd/slop/releases/download/v0.2.0/slop_x86_64-linux-musl"
      sha256 "44ed65b66ee27698a05804a9042d0229e6a3feaee9d7b0a4ba1a824d1341bac2"
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

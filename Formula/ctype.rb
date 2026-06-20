class Ctype < Formula
  desc "Terminal typing test"
  homepage "https://github.com/en9inerd/ctype"
  license "MIT"
  version "0.1.5"

  on_macos do
    url "https://github.com/en9inerd/ctype/releases/download/v0.1.5/ctype_aarch64-macos.tar.gz"
    sha256 "1a9e2ff1bbfb74bdf099b4953427bd941cc4d0f19794f337a646c153f4367770"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/ctype/releases/download/v0.1.5/ctype_aarch64-linux.tar.gz"
      sha256 "b8b4c6bee668c72438ed34b4c669510fca3221c49d84d1c41ee4d7e4f550853f"
    else
      url "https://github.com/en9inerd/ctype/releases/download/v0.1.5/ctype_x86_64-linux.tar.gz"
      sha256 "38be664fa028a15a71d39d722697f32af71c0a29f7d4921b8e0c0cdd64fbdef1"
    end
  end

  def install
    bin.install "ctype"
    (share/"ctype").install "words.txt"
  end

  test do
    assert_match "ctype", shell_output("#{bin}/ctype --version")
  end
end

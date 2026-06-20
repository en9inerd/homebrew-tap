class Ctype < Formula
  desc "Terminal typing test"
  homepage "https://github.com/en9inerd/ctype"
  license "MIT"
  version "0.1.4"

  on_macos do
    url "https://github.com/en9inerd/ctype/releases/download/v0.1.4/ctype_aarch64-macos.tar.gz"
    sha256 "d4b29e9ed439f8dc6250ec9d0ed74e2efb7cc99f7e38ad94463a8868a6b533da"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/ctype/releases/download/v0.1.4/ctype_aarch64-linux.tar.gz"
      sha256 "940ba355ece5ebb5b7e934953c4f9d9abf2b016984a919e5fbffc02952e4c810"
    else
      url "https://github.com/en9inerd/ctype/releases/download/v0.1.4/ctype_x86_64-linux.tar.gz"
      sha256 "21414e12b3027fbdd4ef5b5cf332096a1110bd1d79ffcaba9feca35903f73fc0"
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

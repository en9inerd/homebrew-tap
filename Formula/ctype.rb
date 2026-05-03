class Ctype < Formula
  desc "Terminal typing test"
  homepage "https://github.com/en9inerd/ctype"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/ctype/releases/download/v0.1.0/ctype_aarch64-macos.tar.gz"
      sha256 "3b45bb319f507bc64a6d09489050db80b0f08e76ae1b5797f4a1c17d832eb092"
    else
      url "https://github.com/en9inerd/ctype/releases/download/v0.1.0/ctype_x86_64-macos.tar.gz"
      sha256 "6978e8cb01f463782baac4f9114378df012efd98eead561396021268efa7e2fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/ctype/releases/download/v0.1.0/ctype_aarch64-linux-musl.tar.gz"
      sha256 "df4a1c0bab33c2c931328e343f69b4e14a78a947b8549f20fafecfe9d3f8f683"
    else
      url "https://github.com/en9inerd/ctype/releases/download/v0.1.0/ctype_x86_64-linux-musl.tar.gz"
      sha256 "9d5f0edabe95760e56ff548f104a9e99c1734d7a4699ed7c9ea8c0de1b911234"
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

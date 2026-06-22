class Ctype < Formula
  desc "Terminal typing test"
  homepage "https://github.com/en9inerd/ctype"
  license "MIT"
  version "0.1.6"

  on_macos do
    url "https://github.com/en9inerd/ctype/releases/download/v0.1.6/ctype_aarch64-macos.tar.gz"
    sha256 "224f500ecec004c0da1c89b41fb9b39073059fbc5f176d51ad4a3bd428ef186c"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/ctype/releases/download/v0.1.6/ctype_aarch64-linux.tar.gz"
      sha256 "f8c2e8074e0a30cc1b73e579d4b2f81b373f6e4497edf6df0d963933ec00758e"
    else
      url "https://github.com/en9inerd/ctype/releases/download/v0.1.6/ctype_x86_64-linux.tar.gz"
      sha256 "94c68e48f147912fb805354520bc7b9244cc22c8b6cc342593bd9159fa08904d"
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

class Ctype < Formula
  desc "Terminal typing test"
  homepage "https://github.com/en9inerd/ctype"
  license "MIT"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/ctype/releases/download/v0.1.2/ctype_aarch64-macos.tar.gz"
      sha256 "a05f939cbc1935b4eb2c82f34cd2a0a38b2f2dfe6f2bd76a2fa633c2636ab0ba"
    else
      url "https://github.com/en9inerd/ctype/releases/download/v0.1.2/ctype_x86_64-macos.tar.gz"
      sha256 "352e3d5bc37c579579c5887a5cab02e5b4f9d50b2c3f663973bd75b3cefc0245"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/ctype/releases/download/v0.1.2/ctype_aarch64-linux-musl.tar.gz"
      sha256 "208a05aba26e9ebddbc119f44b44a1712948d1242a0fd7f70e291f7f21085538"
    else
      url "https://github.com/en9inerd/ctype/releases/download/v0.1.2/ctype_x86_64-linux-musl.tar.gz"
      sha256 "1713910a474365f4c6caf9c996d32c11850d79898757b4750c80d55195adbc19"
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

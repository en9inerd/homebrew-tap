class Ctype < Formula
  desc "Terminal typing test"
  homepage "https://github.com/en9inerd/ctype"
  license "MIT"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/ctype/releases/download/v0.1.1/ctype_aarch64-macos.tar.gz"
      sha256 "09bb1a5e1ba08d6b1db9012efeebd37621befe7e3e7434724a59227ce25586a8"
    else
      url "https://github.com/en9inerd/ctype/releases/download/v0.1.1/ctype_x86_64-macos.tar.gz"
      sha256 "8929e55d78a95e1b21cf554741e6a8067320877ee922814982ce4b26447ce6cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/ctype/releases/download/v0.1.1/ctype_aarch64-linux-musl.tar.gz"
      sha256 "b46212928188fd1dbc932bb1ed2b6bfcb2290e49c9881f6391f647c13bfd0ff0"
    else
      url "https://github.com/en9inerd/ctype/releases/download/v0.1.1/ctype_x86_64-linux-musl.tar.gz"
      sha256 "a18d01ca3497b1f80eaafc4cd2199059153562a6430a217728dd789681d4d138"
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

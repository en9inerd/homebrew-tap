class Gws < Formula
  desc "Persistent Ghostty workspaces on top of zmx"
  homepage "https://github.com/en9inerd/gws"
  license "MIT"
  version "0.0.2"

  depends_on arch: :arm64
  depends_on :macos
  depends_on "fzf"

  on_macos do
    url "https://github.com/en9inerd/gws/releases/download/v0.0.2/gws_aarch64-macos.tar.gz"
    sha256 "19391ac2c97b11715d1aacc0486f0c4cbb57117a6892d9748c08c579394e3a6e"
  end

  def install
    bin.install "gws"
  end

  test do
    assert_match "gws #{version}", shell_output("#{bin}/gws --version")
  end
end

class Gws < Formula
  desc "Persistent Ghostty workspaces on top of zmx"
  homepage "https://github.com/en9inerd/gws"
  license "MIT"
  version "0.1.0"

  depends_on :macos
  depends_on "fzf"
  depends_on "neurosnap/tap/zmx"

  on_macos do
    on_arm do
      url "https://github.com/en9inerd/gws/releases/download/v0.1.0/gws_aarch64-macos.tar.gz"
      sha256 "36b4ee9cdf2efb18d5612ba1a90df7203798a10f1795c90ca998eeaa7988e322"
    end
    on_intel do
      url "https://github.com/en9inerd/gws/releases/download/v0.1.0/gws_x86_64-macos.tar.gz"
      sha256 "adc77cd6db2d2b6b857c21b7778c8ac6ebf92da68e8d547876a95aa4ea17bed0"
    end
  end

  def install
    bin.install "gws"
  end

  test do
    assert_match "gws #{version}", shell_output("#{bin}/gws --version")
  end
end

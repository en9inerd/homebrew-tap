class Gws < Formula
  desc "Persistent Ghostty workspaces on top of zmx"
  homepage "https://github.com/en9inerd/gws"
  license "MIT"
  version "0.2.0"

  depends_on :macos
  depends_on "fzf"
  depends_on "neurosnap/tap/zmx"

  on_macos do
    on_arm do
      url "https://github.com/en9inerd/gws/releases/download/v0.2.0/gws_aarch64-macos.tar.gz"
      sha256 "2b5b849e1576825dca9999b82d95dedbf9e6a8543249682caa8d3289c47c7225"
    end
    on_intel do
      url "https://github.com/en9inerd/gws/releases/download/v0.2.0/gws_x86_64-macos.tar.gz"
      sha256 "eef089557c5102589174b6638783a1d288e6c0f2b5dda34b1b077677e8aca29c"
    end
  end

  def install
    bin.install "gws"
  end

  test do
    assert_match "gws #{version}", shell_output("#{bin}/gws --version")
  end
end

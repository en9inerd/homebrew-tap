class ShhhCli < Formula
  desc "CLI for shhh E2E encrypted channels"
  homepage "https://github.com/en9inerd/shhh"
  license "MIT"
  version "0.3.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.9/shhh-cli-darwin-arm64"
      sha256 "4048305528f2be279cac5b420e51b3250e2fb790a0a2c3d609437ff911d9c4f9"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.9/shhh-cli-darwin-amd64"
      sha256 "787592f72711dd30a1f1884374a2c96a8e94c908f64bacb95de671b75bfdfb84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.9/shhh-cli-linux-arm64"
      sha256 "142607ac1b39942fb1f4aa8ed089f13f3b8beabb3bca69f38bdf89fd0ff4412b"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.9/shhh-cli-linux-amd64"
      sha256 "f1374e5a53e49d185eefa55228e920d0a750bd9b30fc8493c1adb6505ae2f179"
    end
  end

  def install
    binary = Dir["shhh-cli*"].first
    bin.install binary => "shhh-cli"
  end

  test do
    assert_match "shhh-cli version", shell_output("#{bin}/shhh-cli --version")
  end
end

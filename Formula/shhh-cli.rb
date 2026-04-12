class ShhhCli < Formula
  desc "CLI for shhh E2E encrypted channels"
  homepage "https://github.com/en9inerd/shhh"
  license "MIT"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.3/shhh-cli-darwin-arm64"
      sha256 "bef2d2d1bda0b635f8ce07165afb054e38efc721129468504289d1dee667ae9e"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.3/shhh-cli-darwin-amd64"
      sha256 "4a5bade30ecf0a555460d56a4efa539dee525edb856228b383d7116bf1c2a50a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.3/shhh-cli-linux-arm64"
      sha256 "957975d4ad0f239a34e3dbb4a5c84adbcdfb578e9e6eaaa6afddef5fc4e60de5"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.3/shhh-cli-linux-amd64"
      sha256 "072278d671468c4116a485a808e03d3c29e69f868f4b8f1158dc9926c76f5060"
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

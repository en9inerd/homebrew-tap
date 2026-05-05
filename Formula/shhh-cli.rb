class ShhhCli < Formula
  desc "CLI for shhh E2E encrypted channels"
  homepage "https://github.com/en9inerd/shhh"
  license "MIT"
  version "0.3.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.11/shhh-cli-darwin-arm64"
      sha256 "fb58f12f7a9d7dc479d85d595c992cceaf0dc653eaa124034276f39c589d70f5"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.11/shhh-cli-darwin-amd64"
      sha256 "daca98a7312dc902732452782e2432e791fefe72a874cca3a92012593a463325"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.11/shhh-cli-linux-arm64"
      sha256 "e48a76422482e307ac04860bd0f75bfeb4ffc2711cf1bfcfdbccf0e132c9ff60"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.11/shhh-cli-linux-amd64"
      sha256 "fca7ab32042faa09570fa0abc23fb9cbf61d49ac75574d1b765825df6601cb29"
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

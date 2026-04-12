class ShhhCli < Formula
  desc "CLI for shhh E2E encrypted channels"
  homepage "https://github.com/en9inerd/shhh"
  license "MIT"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.4/shhh-cli-darwin-arm64"
      sha256 "e7087be652c63b557c6ad1f956b115ff9f2240fdadab529deaf77fb8442be580"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.4/shhh-cli-darwin-amd64"
      sha256 "961304e37503dae60b13b822763e2c08a0f436b985d9c113cb24d7de1b67889e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.4/shhh-cli-linux-arm64"
      sha256 "843a3aeaee581abdc18deb61423db4f53d21875a32feaefe295d1ba7e5e7f5ea"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.4/shhh-cli-linux-amd64"
      sha256 "40e80411090255c388631e887af80e0cf9d98b018aa24b28bfaacdbc68c9763d"
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

class ShhhCli < Formula
  desc "CLI for shhh E2E encrypted channels"
  homepage "https://github.com/en9inerd/shhh"
  license "MIT"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.4.2/shhh-cli-darwin-arm64"
      sha256 "f05f4e2b74dfa4734961a500b643a2f71f511197c044e144159edc27ebe7ba3c"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.4.2/shhh-cli-darwin-amd64"
      sha256 "6c0d956ad64a3cc218bd5c914c3ebb98ac85515ab8f2e0a9616d6fc1144fc00d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.4.2/shhh-cli-linux-arm64"
      sha256 "8ecbd8314365e936b4de84d5f15b862ae536eecaa8d45f6262408406d2fdcf7e"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.4.2/shhh-cli-linux-amd64"
      sha256 "bfa559e4143c6cbab376b9b87c59c09702170fced5e5f3dd5ae5fd121af71587"
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

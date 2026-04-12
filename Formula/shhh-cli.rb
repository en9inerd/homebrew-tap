class ShhhCli < Formula
  desc "CLI for shhh E2E encrypted channels"
  homepage "https://github.com/en9inerd/shhh"
  license "MIT"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.2/shhh-cli-darwin-arm64"
      sha256 "bd36796ebdf8b8547db47e12b4c044b194f70353200cae782dcae4e2638e21ab"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.2/shhh-cli-darwin-amd64"
      sha256 "d9736bff964988a4edd99ddf29f72eefd3516279c4ae17fc1dc26da0df71b58b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.2/shhh-cli-linux-arm64"
      sha256 "3a93a128faae4ddbd1b480e7afffefdc16271a3fb4d512217332b036607a7365"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.2/shhh-cli-linux-amd64"
      sha256 "1dc960dbf9e7fba4c9bbd269634f718e2a67f69456f17a4695b62e42a8449755"
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

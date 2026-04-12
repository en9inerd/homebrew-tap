class ShhhCli < Formula
  desc "CLI for shhh E2E encrypted channels"
  homepage "https://github.com/en9inerd/shhh"
  license "MIT"
  version "0.3.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.7/shhh-cli-darwin-arm64"
      sha256 "aa3390db169d44b9185c6e479e632dcd1c99996226afebd9b8eb0ecbf80fe6e3"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.7/shhh-cli-darwin-amd64"
      sha256 "add9c1a51a953c40d7890eeff5972eb12938d1a3957b7577045d1540295599b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.7/shhh-cli-linux-arm64"
      sha256 "cab2bb0b555dd44caefe22afb8bfee1998a5089b07509105d015c08ab691d414"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.7/shhh-cli-linux-amd64"
      sha256 "dfddfa23e0ca56c8b2d585ccdfe0390df2886af19b1a18b2ea976e6a47126369"
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

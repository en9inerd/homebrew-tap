class ShhhCli < Formula
  desc "CLI for shhh E2E encrypted channels"
  homepage "https://github.com/en9inerd/shhh"
  license "MIT"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.1/shhh-cli-darwin-arm64"
      sha256 "a51eec643fcde0f8902a64c9efefda2df008b8d8b4e7867382f11e1caa21bedb"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.1/shhh-cli-darwin-amd64"
      sha256 "e40ff694d9f09ad0190106c15a05e58f41209d72acf74528ac8c558ac21ce7ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.1/shhh-cli-linux-arm64"
      sha256 "d19e6bb10230c2643d40775085eefc1373839f35c6be27d728a852c590d157ec"
    else
      url "https://github.com/en9inerd/shhh/releases/download/v0.3.1/shhh-cli-linux-amd64"
      sha256 "d1abb8812f7460953336462f0a9f6105be001927faadc4d860d30572b129d810"
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

class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.18.11"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.11_darwin_arm64.tar.gz"
      sha256 "a9a43a40b98f9355be84fb79df0a305c6995dd69b1f6d36ca39709e9d0204328"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.11_darwin_amd64.tar.gz"
      sha256 "32dd582730156d85f0b0764ca935e021a10a55250c4146ee6479aea9ade6ca39"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.11_linux_arm64.tar.gz"
      sha256 "018137b5fb959abef179d8b2526c35c66f58446e8a28adb138237e7698a6dce3"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.11_linux_amd64.tar.gz"
      sha256 "5f6ad440a1b81aa35e002c14c5ce51b28bd1a9783429425f8258a39893c324dc"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

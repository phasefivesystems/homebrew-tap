class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.18.23"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.23_darwin_arm64.tar.gz"
      sha256 "72facccba18bca9797ff79488641aeeb3c82622e76f5e1597e38d2f53aa72f36"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.23_darwin_amd64.tar.gz"
      sha256 "622e473a6677062419ea4e2fbd09dcd2e7ea2e6ed3a047bce19f9ddd5b06ae84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.23_linux_arm64.tar.gz"
      sha256 "63415fd9f00cfb44400d1708e17ebce30412c353345c87c4bdaf2b03d8cf62dd"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.23_linux_amd64.tar.gz"
      sha256 "35d0b777332c57fe1513379ce48030040f206bab688c23b12443dfc24a380adb"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

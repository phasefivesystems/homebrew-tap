class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.9.13"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.9.13_darwin_arm64.tar.gz"
      sha256 "7ac96ce79dd21db577f166b4ca06f7be0372db37f8b59736c1c479edbe2b581c"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.9.13_darwin_amd64.tar.gz"
      sha256 "ac5aee100ff95dfdd8d88338ac6d21c81fbfa720b4a5da0d1654c2aa3f985364"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.9.13_linux_arm64.tar.gz"
      sha256 "0e435c87c2ed0e7ec6547de08e605a11ce993c622ef925fd29a8548982f9032a"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.9.13_linux_amd64.tar.gz"
      sha256 "1605374e72e78bd584e4cf7cd1717cc45a92e1368aee722fc804e890d9b73b29"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

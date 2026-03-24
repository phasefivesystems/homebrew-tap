class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.9.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.9.3_darwin_arm64.tar.gz"
      sha256 "02993204b5196a2209739129ef5e1ce3c970599b82f7cb447c90be3a3d2d46a9"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.9.3_darwin_amd64.tar.gz"
      sha256 "949042e49b8f83bee6e5a84f19c615d2ac84fbd41dbbf18f355f3e1104f6ca71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.9.3_linux_arm64.tar.gz"
      sha256 "d528c9b10ab3443e178cc88fd65433b3c89ed067737adbaddb2da133f7a518cd"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.9.3_linux_amd64.tar.gz"
      sha256 "ce33634ea0f066134b3c4b68540b83e96b0e9909cd1543525292001606fcae7c"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

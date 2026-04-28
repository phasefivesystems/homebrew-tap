class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.11.15"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.11.15_darwin_arm64.tar.gz"
      sha256 "c315eec4f064b28ad04a560abb0d8ac2f9b6277bb2d216830ef48b688f64ea1a"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.11.15_darwin_amd64.tar.gz"
      sha256 "8ccaa0118904ea550bfc118cfd81caf434566d29dbbee8515adfa6b1dfd2af18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.11.15_linux_arm64.tar.gz"
      sha256 "fdb48067c8a420b4df83bacffabf08180f16a502009b7c17a46f401ab1cc3ab6"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.11.15_linux_amd64.tar.gz"
      sha256 "ed17be15a572fbf1af7881457e579992a8e1b0121c3eab1419ae27e49a5816b6"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

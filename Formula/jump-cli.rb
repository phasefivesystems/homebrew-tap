class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.42"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.42_darwin_arm64.tar.gz"
      sha256 "648f07c9a28fb53c4a846b63fa6db522076913ffe4a1bacd4a5c92e4557596ee"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.42_darwin_amd64.tar.gz"
      sha256 "fd59ca1f3fe23e9fd00c13768c0811a3595367e5177eac5bc56dc72c24655ebe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.42_linux_arm64.tar.gz"
      sha256 "680f4865250250924b3cb01d6b6482a206bc7855c3990d9283bf981bef854ca3"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.42_linux_amd64.tar.gz"
      sha256 "5d07bd3ad905bb17f0da677b0086a9b6c80088c770ee3da6dc39cddfe1030a85"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

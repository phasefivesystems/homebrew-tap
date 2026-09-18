class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.43"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.43_darwin_arm64.tar.gz"
      sha256 "58e27a9e9bbcec24c5cee95af73d759b67be40ff725362a9e5aab6cf88a06abe"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.43_darwin_amd64.tar.gz"
      sha256 "a3d57c8ccaf210e7772f431c8da06e5d187e805e36dfbcf833867cda293e3bc4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.43_linux_arm64.tar.gz"
      sha256 "f565effab9de1bef0bf3a8c68a3b6b3bc822f7a12c1a3bd3240d3b6daf703391"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.43_linux_amd64.tar.gz"
      sha256 "77567d34ea377d59278abf030abfb5934f9ff5e659c876fefffb7c4697ec7178"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.13.6"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.6_darwin_arm64.tar.gz"
      sha256 "0cff45a97094c168524eb7a377716257613e7d794d3c2d1e9e6f30184d749f4c"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.6_darwin_amd64.tar.gz"
      sha256 "94eea109107e56d12b9a36e1d3635ec9e45856c20965ad72d394e864384392ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.6_linux_arm64.tar.gz"
      sha256 "71d9e0df5fa72781946f0e2b4b119be469b8d80e8bc1ff956099032581cd64df"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.6_linux_amd64.tar.gz"
      sha256 "446b2457c39cfd612a5bf959bb6960f695eec2acf14539ffb577d38fc3da7ec7"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

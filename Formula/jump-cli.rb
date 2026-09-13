class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.40"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.40_darwin_arm64.tar.gz"
      sha256 "b2e7d8f8bf3ff48ba53bf3c94278fd875dfb8ff9bf9ef8c5c9be3f9fe7ab9378"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.40_darwin_amd64.tar.gz"
      sha256 "6e333628efdfc6c82d4d369913b37f75f2513e9fce08235444e7dd545478dbd3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.40_linux_arm64.tar.gz"
      sha256 "f39d99bfc863c26fc0cd68003d558af6d99381fa7c18161bc805ba1f9754af71"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.40_linux_amd64.tar.gz"
      sha256 "090fc68b4d256bd0f40f47ba9e260baa6df32374330898c4a80f5751abf175d6"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

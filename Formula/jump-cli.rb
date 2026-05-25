class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.13.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.2_darwin_arm64.tar.gz"
      sha256 "e714c23b63e3d9dccb9cd94ad7f43a93aff24f05b17ed406cdb887a3f1e7c73a"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.2_darwin_amd64.tar.gz"
      sha256 "636fa24b8911bef57c99c332336569cf80b6d0dce3414b92a6b18371990ede9d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.2_linux_arm64.tar.gz"
      sha256 "27287829d5c658c64bd9a717e15a6f122891134dfc7eecead094dcf5e120ddd2"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.2_linux_amd64.tar.gz"
      sha256 "43bb3d4681e3a4cd9a5edd83e6997598e85abd58cd0c258517cdc3463b1a8005"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

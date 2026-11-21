class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.18.17"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.17_darwin_arm64.tar.gz"
      sha256 "c3232effa6e0fa2ce96215f4eb6d7471692024c4dccf7e8c7877255f0dd8ea1c"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.17_darwin_amd64.tar.gz"
      sha256 "e80fb9a546ab15b86ee291dc57e09e906b8311d48e39dbb5e0ed4534937af154"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.17_linux_arm64.tar.gz"
      sha256 "f2599872658d7ebd00484b0a0736ea6902bf868e5e000374fbffac1886232557"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.17_linux_amd64.tar.gz"
      sha256 "f6e0d67786735999cac9add3792a96d1624fc64b698d7c4ea5b252f90ee5e97b"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

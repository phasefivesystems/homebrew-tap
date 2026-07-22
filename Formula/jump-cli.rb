class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.22"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.22_darwin_arm64.tar.gz"
      sha256 "a93451eab2f24fb5b7c3a8543c0d6dc53180e67d964cc93532581ad93acbf9ae"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.22_darwin_amd64.tar.gz"
      sha256 "c234dd344da85c048a25befb8341ce1c7220989418501479b0fc40b6da7df727"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.22_linux_arm64.tar.gz"
      sha256 "f55cea6470a87287727753ee0465f351c956d4c2f48a9b1c76519918ce1fede9"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.22_linux_amd64.tar.gz"
      sha256 "31e2d4ecc56fb8d884fbfde5590957bc2c766e3a9ed3627b2114099aab952ab0"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

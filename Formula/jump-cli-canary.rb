class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.59"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.59_darwin_arm64.tar.gz"
      sha256 "c453f440e6b46cb620f4386bd1f28c1895a841fd64356fcc6423d2164991b264"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.59_darwin_amd64.tar.gz"
      sha256 "4c22317bf53955bd40fbbe5000b5149899056598a361dbf9a97b039a53bc2cfb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.59_linux_arm64.tar.gz"
      sha256 "2d394d932c3ce5a491b7e1bec16e11825c02608ddc60a6c37e74894fcc67cab9"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.59_linux_amd64.tar.gz"
      sha256 "3cd6fb07f9e343f91199c2840022933c7907dadfa14add9b8f104cb656d21084"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

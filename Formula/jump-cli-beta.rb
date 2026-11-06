class JumpCliBeta < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.18.6"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.6_darwin_arm64.tar.gz"
      sha256 "d475c04e04756c40395c85305f61a13f4d5d255201798cc89c4abe19cb428fd3"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.6_darwin_amd64.tar.gz"
      sha256 "21061ee1e26bbaca9bb99be4a7e77d39fe7120a2ed7d1fcb41005521f054be7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.6_linux_arm64.tar.gz"
      sha256 "4ff9604c3b2be0f2ffd5d1361cb7859f2f8a4322baf4f085c4f76a7281981739"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.6_linux_amd64.tar.gz"
      sha256 "9218b023579c022adfac42cd9cdcbe1dfbf1c0c6e047a1df1dcc3fc37011bb45"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

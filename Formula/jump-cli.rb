class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.77"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.77_darwin_arm64.tar.gz"
      sha256 "873f75810a6d38ad204fbbced9072267865dfe3833663574a2c9204de5bc4377"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.77_darwin_amd64.tar.gz"
      sha256 "8cac4ef5bb5274779eebf5df962eb85fb0dc6b8d2b9533b79e59ffd57d8a5444"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.77_linux_arm64.tar.gz"
      sha256 "d7c5cee97623960fb9a8acedda5e5e1172c74c8832e4dc2b09dbd0345631a651"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.77_linux_amd64.tar.gz"
      sha256 "ffe34f7d8cf25dc15af315cc4c1ebf3226521907f6202a47796e16f15d3545cb"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.33"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.33_darwin_arm64.tar.gz"
      sha256 "039d0161156b1d93d253a1be63e7f43b6d43b024f52388e64441e1428db5bab5"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.33_darwin_amd64.tar.gz"
      sha256 "831852bbe2676fe0dd74e200d3e017a3fe4c2178596562cf62752be3090d1a83"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.33_linux_arm64.tar.gz"
      sha256 "f973649ab82cad118c07fbecc8b476e671cc72e435dd5c2ae117525d1742baa5"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.33_linux_amd64.tar.gz"
      sha256 "2605c628eca98031abd2ea565e514e3b06752e2679f704b407d33e9de6fb264b"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

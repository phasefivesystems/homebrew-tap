class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.21"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.21_darwin_arm64.tar.gz"
      sha256 "81078c7922049d14b45e61359c89724f4a5b5e390b6579fbd1736ddb06c7f1f6"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.21_darwin_amd64.tar.gz"
      sha256 "480349aee30e2603c68de5df7069bdc31385c826065200a7fccad94a16fdb40b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.21_linux_arm64.tar.gz"
      sha256 "fe868a48ad4fe5b9c5552937239f4d546b763043abf051ed3407e5a830e7d328"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.21_linux_amd64.tar.gz"
      sha256 "c06525ccb94db770ce3a7ef55c20883dc90cb8a097093389a73316d2c1d135ad"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

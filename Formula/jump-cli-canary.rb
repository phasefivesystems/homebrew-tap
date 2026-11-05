class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.18.5"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.5_darwin_arm64.tar.gz"
      sha256 "4504a4ca039ff0c6cee8acdeed460b2e65c686f44ae707dea248747ea910e153"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.5_darwin_amd64.tar.gz"
      sha256 "3fd7213438fc95a90b29e69a54fd2efdb7a0e3f20f97b8d2f7158e1d52e880e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.5_linux_arm64.tar.gz"
      sha256 "cb2ce744f66693a7335365ec30ecdce90a6ff108f1cea633660b71891b1edfca"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.5_linux_amd64.tar.gz"
      sha256 "a7545d6e2f257670f9586850cf0e8863942d70b6b386dfd61458ac1e64fa1120"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

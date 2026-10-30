class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.83"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.83_darwin_arm64.tar.gz"
      sha256 "e86473c29684bea859903f1edfdf125b7a91fb6a7d26731f0dfc8a672f5b7f5a"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.83_darwin_amd64.tar.gz"
      sha256 "c2accb378b6c2b2dd0696c347902175cae46ce2e2fbf4dc0dc38d7c348cbe3e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.83_linux_arm64.tar.gz"
      sha256 "2ea085177523042e65d48a000e3367dcbd2e53bff43a7ccb566ce1031f10db3e"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.83_linux_amd64.tar.gz"
      sha256 "8b62ee834208a3cbbb2eef3ed1ab3cfd06bccbc62b366c882a52dc7ac4046324"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

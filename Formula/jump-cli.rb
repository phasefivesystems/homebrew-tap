class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.36"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.36_darwin_arm64.tar.gz"
      sha256 "e5bd4dd1fccc2175a3876b6cd87346266064c63a7874c7e68c0f18b5402ee9f9"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.36_darwin_amd64.tar.gz"
      sha256 "8f08cacb0f8a40a0a214492b7e4983d79d2413950504f298575a5c22d9fce7de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.36_linux_arm64.tar.gz"
      sha256 "8f6eae909ec6b546458ff5413a13798d2b1e055bad9ba744caaa2925013fe521"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.36_linux_amd64.tar.gz"
      sha256 "f949805ecbdeac4e3b355d7b76fa9ce54faab32210b935ae82a3bce04e9cff64"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

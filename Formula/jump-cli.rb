class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.10.6"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.10.6_darwin_arm64.tar.gz"
      sha256 "3b32d1a9645f6c0c2142f327ec43c0de1388079eb2444348cc3bc0d39959c63c"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.10.6_darwin_amd64.tar.gz"
      sha256 "478840ab6fcfd44177d5c60f0f99662ded5282a8b551ef397df23d4d6b1439ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.10.6_linux_arm64.tar.gz"
      sha256 "f6265331a7d73e0707ee3a68327de0aa7773b867b3b5cb5c325dd00c8b33e5fd"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.10.6_linux_amd64.tar.gz"
      sha256 "d2d6e3e46543be16ff8ec06a9e8a891a8313633ef0061cd090f78f36b96fe51e"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

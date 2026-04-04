class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.10.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.10.0_darwin_arm64.tar.gz"
      sha256 "3c4c0e0bf4454d67ec19d43a4301cfa16968a0ab44120b4757d37f72b7831d13"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.10.0_darwin_amd64.tar.gz"
      sha256 "cc22da04b72f5184e4e2ebba76d1aaa0673f905c780f88296e2c05bdd60a2dac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.10.0_linux_arm64.tar.gz"
      sha256 "1b366c89877a317596004d0841c939fc9470a08e6920e56befe9ce8d81aafe22"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.10.0_linux_amd64.tar.gz"
      sha256 "3eb50984c6a0ecdba3f95345b3099eb120021c2ffc21b0e14163d2993c22b382"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

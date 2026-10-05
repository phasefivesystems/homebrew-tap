class JumpCliBeta < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.60"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.60_darwin_arm64.tar.gz"
      sha256 "31420e9294d9ddfc9cf0414f3c54139d4f47c3884911e986c2c4793d0a644149"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.60_darwin_amd64.tar.gz"
      sha256 "0c1e94a202123098142cf21783a4ea608474e5a89db5e26a0c8f6a5dba46c97d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.60_linux_arm64.tar.gz"
      sha256 "83c35a75ec4b93973b49367060c62b6f597d1df891e02dd1682cb37393ff9234"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.60_linux_amd64.tar.gz"
      sha256 "b69c4e5c15edc85b7c896aa790001f2db60e62e1f3e4e38769c284a72e2db110"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

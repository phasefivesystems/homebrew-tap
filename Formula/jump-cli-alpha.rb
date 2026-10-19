class JumpCliAlpha < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.73"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.73_darwin_arm64.tar.gz"
      sha256 "16b620bcb419c1cec905b2c46aca607d78cdd0970b78519fc2155fa4c9213f67"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.73_darwin_amd64.tar.gz"
      sha256 "58d2593e5720da42454cac8ea91398b062ff19259eb322a68405e842c133c56c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.73_linux_arm64.tar.gz"
      sha256 "acf6cfa0d0fcddbbc653aacfedce6bbb6b9de39d37fecefc7fecf68b43f10e9a"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.73_linux_amd64.tar.gz"
      sha256 "f02372cbe4c6e3a7ad3c3de711be69866da473c6dd9e50c9e71375b0e56e3619"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

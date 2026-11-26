class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.18.21"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.21_darwin_arm64.tar.gz"
      sha256 "d05792d11553d6c92632b7820281bac9912465b2d7a9bd9b8b6aea6e7ea0d3a4"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.21_darwin_amd64.tar.gz"
      sha256 "d6a1ada367d0cda3c30fdac01c0d0217134e30c04f9005820ee1172a42d9ec97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.21_linux_arm64.tar.gz"
      sha256 "a2c1579bc4bca78cb99c3b21fa2047b335fe838d05913f998c22bddf0673e7d2"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.21_linux_amd64.tar.gz"
      sha256 "615b8b078e9576727d019611921a68cde8f131373a51ca74aaa8e0c5e1072e1d"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.66"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.66_darwin_arm64.tar.gz"
      sha256 "766ac2203a569c5e1a2e0d893ab35a360adc0e0a1e71917c964a0c1d3f6eca7c"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.66_darwin_amd64.tar.gz"
      sha256 "72b5992b6370daad3ce5db27bd4512bda5cd0201bf2b572013436e89dc4204b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.66_linux_arm64.tar.gz"
      sha256 "4771bdcd5c325bd0c0db0efdc0dffbc2174e71a05698559e543113096ca5c485"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.66_linux_amd64.tar.gz"
      sha256 "1fa12e24d3db6e7a63daa54e9831a53e3175e8bc2638e00dbb6722bad3b0d6ec"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

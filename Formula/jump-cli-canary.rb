class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.46"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.46_darwin_arm64.tar.gz"
      sha256 "783293727c323e8510149100f52d173db216e6fd437ff5b6d045a164f2427e37"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.46_darwin_amd64.tar.gz"
      sha256 "9cd5ef902e639dbfdf4ef87e5186ed4edaba5e9cc9c0f69de4ebad9479e4d381"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.46_linux_arm64.tar.gz"
      sha256 "35e4c7e984de3635aaaa7146794b6f47ba406d3de2789172b28444af238776d5"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.46_linux_amd64.tar.gz"
      sha256 "6ace15cd67da784a052ecb2391e6a1b23d6290c2c68bc17ec2be9484786439d0"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

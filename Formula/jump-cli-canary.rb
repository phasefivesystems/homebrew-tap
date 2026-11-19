class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.18.13"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.13_darwin_arm64.tar.gz"
      sha256 "9ba6ccb01162d6218cf0fd196fd999e522cffc854029940895eeb82030a93fcd"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.13_darwin_amd64.tar.gz"
      sha256 "e3ac2f5e538d1751dc53fd0fe9af4f10fad9e6b79b102a234561585da3536ddc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.13_linux_arm64.tar.gz"
      sha256 "e7e823a6d8733d76454f15d3c7a3bdc532b8668e1aa9b9b26690065b657ccdd9"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.13_linux_amd64.tar.gz"
      sha256 "199fb53d54d8bc33aa3e3a720d283c33f6c15c5325da98db194ee7a330ee3dcf"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

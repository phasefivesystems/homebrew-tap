class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.47"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.47_darwin_arm64.tar.gz"
      sha256 "850505d77e4d133e96a8b7ca45752f47ab70de3f55bf1c3ff1edbddc943c4e18"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.47_darwin_amd64.tar.gz"
      sha256 "2bf3d8880301ab6b103e1a2d3a00c2783eb3410e11141b1ed0abfc8954f128d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.47_linux_arm64.tar.gz"
      sha256 "658d5179cfad87ad8f7f6501b314cb5c13e2e2aab14c9213a8cfde91b4eaa546"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.47_linux_amd64.tar.gz"
      sha256 "6644ac76e1c371ad0f1489d05731bd070acced81c0e866756ca5ebe7b3fbb5b2"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

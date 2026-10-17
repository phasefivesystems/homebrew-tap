class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.71"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.71_darwin_arm64.tar.gz"
      sha256 "1cbd1b11b3819bf22c217b4c8d309bdab3f325b29a29677d57ff20f939d0a198"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.71_darwin_amd64.tar.gz"
      sha256 "c2b89610890a482ccf3c4cae8737a61e0b73460595b07d91c7720ccddd821ac9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.71_linux_arm64.tar.gz"
      sha256 "6554543d5832a517fed56ab4db63eedce7ca2660c731bf6ef87f2810395aa41c"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.71_linux_amd64.tar.gz"
      sha256 "6cd7d5aec33dfb0afd3d07d6e2daa5f6f4108a96f79a9dda42cc19b77e18626e"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

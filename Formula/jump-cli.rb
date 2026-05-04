class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.12.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.12.0_darwin_arm64.tar.gz"
      sha256 "0f9ab57e053cfc30859c1d45d0fdfd8ec841e6800c1d64e32da1df7c400b204d"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.12.0_darwin_amd64.tar.gz"
      sha256 "fddefcecfba8ec73b6fa1101044fd04b5958bb0db52741a3629b4e51d86a39ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.12.0_linux_arm64.tar.gz"
      sha256 "fcbd8d17f662cb7ada8f9b539d6a659faf5e8bbf6cfc458c3d10607585b1d854"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.12.0_linux_amd64.tar.gz"
      sha256 "23150032c7bf6e7228297079ae436c614fa4d1ba3a5528cd5d9749dc1806f90b"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.65"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.65_darwin_arm64.tar.gz"
      sha256 "4b36f5fc7f7a5aeb6da7ac2e4d1dae684614c344c2cb58af8afb5c5eaa30c75a"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.65_darwin_amd64.tar.gz"
      sha256 "a33012cc89f9a55db8ba0ac6c347026b35bba96b63246f4ae90353f6d966baad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.65_linux_arm64.tar.gz"
      sha256 "a110637655e50aae89b085435709f3d8f8899fa969d1c9b6cca95204bc7aa023"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.65_linux_amd64.tar.gz"
      sha256 "ce7ff8ece29a0f434151e635ff79a151ade2867c6dc337c8f90e3f74f77623b6"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

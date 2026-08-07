class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.26"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.26_darwin_arm64.tar.gz"
      sha256 "99bf5f6c59a8e7bd545892996e0be2578e09a906e1b991bc11b3c12433160dab"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.26_darwin_amd64.tar.gz"
      sha256 "1dab533e47875cd62c4079c9b8ee115733f30ead217a7f897cffd3bd9d01a934"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.26_linux_arm64.tar.gz"
      sha256 "d2e61e3512397be2f149d98f056e2f71c4396530897047279243a30befd64bcc"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.26_linux_amd64.tar.gz"
      sha256 "e61268f49a369cec2553e455596298ff192733a7fd2eb6f6adb73ed05b5fb227"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

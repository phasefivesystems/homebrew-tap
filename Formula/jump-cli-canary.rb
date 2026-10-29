class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.82"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.82_darwin_arm64.tar.gz"
      sha256 "e7ceb28267c353cde5b43705ef9e6b41785493b496494289c36207cc8b4ce99b"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.82_darwin_amd64.tar.gz"
      sha256 "a2b4460d293c77898624566797de6af46d84fa09a09037469cf5720455137c19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.82_linux_arm64.tar.gz"
      sha256 "36bb77b0442a515cd49325ce0387f145786f0e9513453c94a90180d6a0dadc74"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.82_linux_amd64.tar.gz"
      sha256 "39b59118060bab045207244e01ccddfb12fa6d28fbb559b3249213f2eacb995a"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.24"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.24_darwin_arm64.tar.gz"
      sha256 "dd7d4aacd0ab357248202069026008369eddfb9edc16dfc1ec6c92f3738ee903"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.24_darwin_amd64.tar.gz"
      sha256 "cea8ce211aa842e919a7c897ed099b8b7e80c462cc6a7495fdc04ba5cf944e4a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.24_linux_arm64.tar.gz"
      sha256 "667c728fc6c3fbc9a4046f3e0ef1f93e41fbc04e0c0d5e6f4a68edecf862a80d"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.24_linux_amd64.tar.gz"
      sha256 "cbba067d6e4f6c0890dbf0a9f09d4d6730efb7c236219f0692cc408958a8a934"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

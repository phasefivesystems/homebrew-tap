class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.29"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.29_darwin_arm64.tar.gz"
      sha256 "6e050f250da7049751c8b5c906a5c5c1f3d668d71d8d7b69f7e3943a461427a8"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.29_darwin_amd64.tar.gz"
      sha256 "d25856352cbd23b080f60d1f24f81c6bd0042f53d00ee7d4ed875cd30144e3d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.29_linux_arm64.tar.gz"
      sha256 "beefa1a8c86485c46499ce4216ff9bf418559d98304f40d1d49b64d3a0b690c4"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.29_linux_amd64.tar.gz"
      sha256 "8f246738eaab0f59ca3e6fce2d2dd2a9bbb22bc2fd9963d426ecd3cd51e57430"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

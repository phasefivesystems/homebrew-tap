class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.38"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.38_darwin_arm64.tar.gz"
      sha256 "8a404b228d3d3cb1b6e28a7ccfe648cd57b54747ffdf7dff47c478646b7cadb8"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.38_darwin_amd64.tar.gz"
      sha256 "2c1483f8b5272fdd4e59e5257cc040232754bff57f6db7635e69f242de0fe611"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.38_linux_arm64.tar.gz"
      sha256 "bd72f22dba8bd7edf31f2d1082b8501276f99409105e024816276e8517ea4961"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.38_linux_amd64.tar.gz"
      sha256 "96828b87a4075b9a8decacb4892945f967db194500760956aa625d8646d8140b"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

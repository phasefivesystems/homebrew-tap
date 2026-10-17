class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.70"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.70_darwin_arm64.tar.gz"
      sha256 "6aebde84fabf536b8608f2f2455a9a4015fe337707a8c80bc21bd4ab33f11f9e"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.70_darwin_amd64.tar.gz"
      sha256 "4be7f3290d57226e7251d0044b6e090960b7bb9d45bb714a499772a0ecd59f7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.70_linux_arm64.tar.gz"
      sha256 "c8918c39bd2ce9770f7d0a664b83113713a26e7b8c71337bae0d59b40dfdfecf"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.70_linux_amd64.tar.gz"
      sha256 "85675fa6410c1e390863a4946abbbd9e3ada02ff8f453a0c9072fb312c0e9249"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

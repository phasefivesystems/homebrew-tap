class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.18"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.18_darwin_arm64.tar.gz"
      sha256 "3a7a17b276ca2fc552467f1c8b3c7c388bccc620e4b54a2eb5fec91bb11a84f9"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.18_darwin_amd64.tar.gz"
      sha256 "24a5b4568023352314698e2ef51a6c6c6cd8ebf37f9ca238aba87ba06cbaa94c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.18_linux_arm64.tar.gz"
      sha256 "45b7b06cd24eca3f6d6a4a84b8bfff3224842c532f3f38ff9aa7fd106d65d756"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.18_linux_amd64.tar.gz"
      sha256 "0430ad64504b33834c29330f85d37fd7586636d10eec994ddf4d2a7e94e38a5d"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

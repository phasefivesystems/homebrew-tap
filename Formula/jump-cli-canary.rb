class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.57"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.57_darwin_arm64.tar.gz"
      sha256 "d2c1dae3d27fb70e2093e7efc9fbb896c41392cde6e40135066d5295a563043e"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.57_darwin_amd64.tar.gz"
      sha256 "3a0ee182bccad83341198fa3260f7e966f2bbe7f8573c4850ffe20a18cb9ae93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.57_linux_arm64.tar.gz"
      sha256 "fb6fd55d2216d9b785498a75e743bdcb3a28d351fff171ed4f329682c22fa011"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.57_linux_amd64.tar.gz"
      sha256 "cd76351e792aa459c66df6aab126ae02b2cbf9eeb7166d9702062f5577087d60"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

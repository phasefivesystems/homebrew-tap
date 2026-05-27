class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.13.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.3_darwin_arm64.tar.gz"
      sha256 "02201005705022b9cfe424ab38499c19eb66d126cef5c44761c9b93da216148e"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.3_darwin_amd64.tar.gz"
      sha256 "6d5f940392ebd8382c319bf2a6a0bd925e92bdfccb6e5c14f6a0948bf33c5dee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.3_linux_arm64.tar.gz"
      sha256 "a3a3cfabc46f0fba9ce4eb98b91228eec515bc751c3f552f97a237a214519f7d"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.3_linux_amd64.tar.gz"
      sha256 "ea09e6120d50249c04f69f8113bf6418bc6ef6dbf98b842855da58c3d91f3a43"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

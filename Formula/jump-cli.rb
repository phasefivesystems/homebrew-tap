class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.23"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.23_darwin_arm64.tar.gz"
      sha256 "50a26bd796e37e3c384eb42152d536383230d9ef8406ae5a181a94b8b1d9db40"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.23_darwin_amd64.tar.gz"
      sha256 "d3aa8dbd9889e54afc9203a1907f74a92de2a2b93734fed319ae5bf45acf8c6a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.23_linux_arm64.tar.gz"
      sha256 "21e724abe6f4decb07664456931780abc110ecc861c54df3e4d205dd22eb8d6e"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.23_linux_amd64.tar.gz"
      sha256 "897a9faf08684080d36a04d45d569eb9856dd9159d25bf7d8e97d41bfa700471"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

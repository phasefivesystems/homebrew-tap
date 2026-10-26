class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.79"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.79_darwin_arm64.tar.gz"
      sha256 "90815a139101a9868fb3c82b8bfa95b5ff96de77a8e69accb8f5963f091c4f01"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.79_darwin_amd64.tar.gz"
      sha256 "5169a465a8cd0c54a3d31a4b6a2cfbdab74d3d49de3b76727afd89fbe2e83af7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.79_linux_arm64.tar.gz"
      sha256 "c467df6fbbfab6773ee61c7865573ee41d6b931e59588242ef1832223c5c5233"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.79_linux_amd64.tar.gz"
      sha256 "8be09c5fd5ad8fea3092a209b438f25299c856123dc740adab8ab5f246a86b63"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

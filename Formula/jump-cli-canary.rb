class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.55"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.55_darwin_arm64.tar.gz"
      sha256 "9281899815e01c8c45e56e2f09026e2918f6dc60c704ab4904902eb14f0e007f"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.55_darwin_amd64.tar.gz"
      sha256 "90bc8243146fa073c07923120dabe0d80caee8ff131fe12b987e8654e651d3fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.55_linux_arm64.tar.gz"
      sha256 "cdcb4f4d82ce84f9d0aea79d7cc1242b737e1ccfb85d942b34022ad2e1cfb505"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.55_linux_amd64.tar.gz"
      sha256 "66ad1476cc5f8c632c4092c02d31c963b04910b78458dc32fd198489e2ce51e5"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

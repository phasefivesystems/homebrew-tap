class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.9.15"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.9.15_darwin_arm64.tar.gz"
      sha256 "73422c740e448486f0b4012cbce66d9729c2a30561d1f3ab29679e261b0754fd"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.9.15_darwin_amd64.tar.gz"
      sha256 "e1a983b066c5472a10d6702b6a22f351ff90fc68ae742377fc2561e52e6b1699"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.9.15_linux_arm64.tar.gz"
      sha256 "ca0b9e8b862963ca38939a2e175ca85d83e4aeb88cf364c69de543ad92e1a5a8"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.9.15_linux_amd64.tar.gz"
      sha256 "6aabeaf502ebe8d6206ae103f192471965d4ffab43cd9cfe4ef3a18dcdc1499d"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

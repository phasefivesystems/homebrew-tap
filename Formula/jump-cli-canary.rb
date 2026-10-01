class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.53"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.53_darwin_arm64.tar.gz"
      sha256 "66a6744aa33d49dc461d99f5e59c8539bc82b7713d572ad9fba6e852400716d4"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.53_darwin_amd64.tar.gz"
      sha256 "d37256480fd66808e4e1cf7461e9eddb7eeacb9ed39313bc3cd33ec8c32ac7e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.53_linux_arm64.tar.gz"
      sha256 "9e5db299d2c360fb5edc1e8a8bd0551dcddb967d6bb8eaa96cbe49e588daa51a"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.53_linux_amd64.tar.gz"
      sha256 "68d58292932213742d9bc89d0f55984b2ee586da827389df94113066bd8f06a7"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

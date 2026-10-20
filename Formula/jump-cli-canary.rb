class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.74"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.74_darwin_arm64.tar.gz"
      sha256 "7461c1bf732bfcdad84c61a655fd12eee890dc7f31d571861ddae4f28b0b19eb"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.74_darwin_amd64.tar.gz"
      sha256 "66e7447a35f6a728e9974c7660d8d996bbe3d9d189bdf99b44b159f0a76d0343"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.74_linux_arm64.tar.gz"
      sha256 "d28a073407005120133a8e7e4cc0f28af8da0dfd37fb0606a2ffba7603162c85"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.74_linux_amd64.tar.gz"
      sha256 "bffa8ea7a97137d773a6d0da743b6dc9043162f9c1f85a894dcd4810647c98f8"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

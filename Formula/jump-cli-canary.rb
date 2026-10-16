class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.69"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.69_darwin_arm64.tar.gz"
      sha256 "6503e40a3abfb263a2ea93cc3f3ebd14b2afb0ac5cf3a640ac8dbe5616c9cf6a"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.69_darwin_amd64.tar.gz"
      sha256 "0af6b9ff0465bf39127ce1b112348bed7857553459bf11eeaf87d1cc5f741f98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.69_linux_arm64.tar.gz"
      sha256 "1a7f084fd3cb23e941809690c1d011a3fba47817c255cf7aa9e54c4f6f7d86e2"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.69_linux_amd64.tar.gz"
      sha256 "fa087469099cc0564ae5be4667300d9bb0cbb014ed79e68d0eeb5dda054fb3c8"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

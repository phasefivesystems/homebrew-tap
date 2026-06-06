class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.13.5"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.5_darwin_arm64.tar.gz"
      sha256 "e6d1850f274849d8bd547a8c09a33a00053ae11530663736959f891e23cbff4b"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.5_darwin_amd64.tar.gz"
      sha256 "3ffb9a79f7cdbb6de658bf11f44d4b0b4f037200b925ddb15a183eaea4c69620"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.5_linux_arm64.tar.gz"
      sha256 "67a18ba2c0b5bf3ad8a19d36d4d6976c799aee59d063ebc8992894fcf208e1df"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.5_linux_amd64.tar.gz"
      sha256 "db3f831ee17fe090f96960ec5c88fb2e47d559e78bae11b973e63a1e46523545"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

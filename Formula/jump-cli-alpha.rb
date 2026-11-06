class JumpCliAlpha < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.17.5"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.17.5_darwin_arm64.tar.gz"
      sha256 "c056d96ce583e0f874ceed701bdfbf620d6bcf0866e5c66cc95f72694e95c439"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.17.5_darwin_amd64.tar.gz"
      sha256 "d8865711b7dcc7b738c7da251418031ee620f32b5bb017308ab4b32c6da94f72"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.17.5_linux_arm64.tar.gz"
      sha256 "d22435260eb379319c4c25c4e5c988b12cd4740dc8f9b0926597f3179379b6ed"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.17.5_linux_amd64.tar.gz"
      sha256 "3446f8ae126e5440121f92df9de7b2a969544c570ccd8f5d9831f670f02a37b4"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

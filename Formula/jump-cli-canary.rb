class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.75"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.75_darwin_arm64.tar.gz"
      sha256 "4378333a642ed7250fd7cea431e5c5c32f6bbc8fd883015fb286617ba816d26c"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.75_darwin_amd64.tar.gz"
      sha256 "597c4cf72a1977f871d8a21a1ac0422dd1abf127514a6f8815a954c424e67e68"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.75_linux_arm64.tar.gz"
      sha256 "5a91495c712f6edd64c3eecf8d61b0099401e8dc912209091a502040d9a92a51"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.75_linux_amd64.tar.gz"
      sha256 "51f4bcd264947dbe54b909292dd509b5970386bd33f196734662619d8da1f6b2"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

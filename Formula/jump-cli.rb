class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.31"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.31_darwin_arm64.tar.gz"
      sha256 "75061cbfa797abc527dcd3f7b3d00c93c1845ae319028bd17e8c0b5c97eabddd"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.31_darwin_amd64.tar.gz"
      sha256 "c61ed8e5d575a1185450f2d6277b4a4df30f2237f4333a407586fc41637e225d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.31_linux_arm64.tar.gz"
      sha256 "7ddd152846435bec3c8dc33d351d7ac619d8b91af632b71d2ec5d76bc36044da"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.31_linux_amd64.tar.gz"
      sha256 "08ff8b332f17e7e8277cc35b346a796a120fdede96611fbe27d624285c158b47"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

class JumpCliBeta < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.18.19"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.19_darwin_arm64.tar.gz"
      sha256 "f82b68a516df463c69c2db014d7eebdc340aadfd190f21a4a4cb8ca417fd6933"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.19_darwin_amd64.tar.gz"
      sha256 "2d4a7f68683d866e28fabdc5e8a113110759bd92c5a28eba17d40fab96e61f5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.19_linux_arm64.tar.gz"
      sha256 "7203bb584bf337ea0f3c5785136dcecfc7e94289560b82471d3304bee74790e3"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.19_linux_amd64.tar.gz"
      sha256 "ac78647f062a4e2d42a4516bffc77bd3edea694d54baeef3eee617e1d41218b1"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

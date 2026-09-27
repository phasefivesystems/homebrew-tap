class JumpCliBeta < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.49"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.49_darwin_arm64.tar.gz"
      sha256 "81c540ca0538a2ad2a057ef6aac755ff6faf25140494dea358a41128dd933e68"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.49_darwin_amd64.tar.gz"
      sha256 "4e9e6d8a019ae079a1fc24ebf3aa6fb483126990de64890be3adae066ac83502"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.49_linux_arm64.tar.gz"
      sha256 "5990325c37c9b8267b6d028e7c59ba75d2a3faefc9e82b78b828c4aa2ea8a7b9"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.49_linux_amd64.tar.gz"
      sha256 "c7aeae286e42e659c9c7d259cedbcf0273eb655092fd291a0c5cc4046d871dac"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

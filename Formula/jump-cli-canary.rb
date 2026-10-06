class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.62"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.62_darwin_arm64.tar.gz"
      sha256 "de5011978640aef4a202f77f17e3efb745c13ab1e4792e3971090ddd6e6283cf"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.62_darwin_amd64.tar.gz"
      sha256 "85881097324e382306ff4645d9ce47ebad7fbcf77e7b50699b37337232ee5945"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.62_linux_arm64.tar.gz"
      sha256 "5c9eb5af19cb51d65d3b4dd2d2941a6c1d8b9ea93e6413b0a3f8a12379f3ceef"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.62_linux_amd64.tar.gz"
      sha256 "2ef8a46ffeab7e71be632dcaa9e52a5b795bdeb6f92d31ad24383d2b5d5c07a3"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

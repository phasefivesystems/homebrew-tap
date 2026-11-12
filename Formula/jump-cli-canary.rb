class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.18.7"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.7_darwin_arm64.tar.gz"
      sha256 "cd7b3fc5e57a1e2ef204179c6bdee2f225e6c452c098d3a2b7c4bb6984b61b90"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.7_darwin_amd64.tar.gz"
      sha256 "45e59659b93d262e445e57e0588e75311592fc44d39ecf0e1da949823578ec79"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.7_linux_arm64.tar.gz"
      sha256 "7799c15c78b55087423025830e2fb6d0e52fa4f53fe226debd6a6ebb6b4b976d"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.18.7_linux_amd64.tar.gz"
      sha256 "774cafcf336d4fb95e8ed8e47e66e6a73ed02645a982a93fdbc5a3e8f55e4ed9"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

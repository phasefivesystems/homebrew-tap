class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.45"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.45_darwin_arm64.tar.gz"
      sha256 "d4993ca86ee3bd0b0cf320a2ddeb81aadbbfc0140ba2aa894080ab29c3079075"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.45_darwin_amd64.tar.gz"
      sha256 "e57518953bbc48127e35e9cf45669b03a93c277068c12cdeaecd71d832471642"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.45_linux_arm64.tar.gz"
      sha256 "e55ccb7fb1688a418a154c31378e533cdc87a80ecab0ea045fb539ac3ebe07ea"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.45_linux_amd64.tar.gz"
      sha256 "9e06607050b7dc923ef0d5fff65723d99c936a3cdadcb7595a382c6cb9968ad7"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.41"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.41_darwin_arm64.tar.gz"
      sha256 "4bada77c0842195199c0a3d00b12743822513ab2052a267c5610820911044087"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.41_darwin_amd64.tar.gz"
      sha256 "4bfe91f6c25f6283c02773de1b64ff5610ddbf4e3d6cd55dfaae75ae59b5b1d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.41_linux_arm64.tar.gz"
      sha256 "0958e0886cfe34bf80dad1c740518b463bd2a636a6c954d502d4491cd44bce2b"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.41_linux_amd64.tar.gz"
      sha256 "2d31054aca8a2a63b7e49d25b2f1640156fd7a83d384bda7f61890c8e96b2256"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

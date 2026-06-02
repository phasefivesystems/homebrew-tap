class JumpCli < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.13.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.4_darwin_arm64.tar.gz"
      sha256 "0cc65a934638f766fe521990416f27b4936752c82a5174ae81d7249c6645a455"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.4_darwin_amd64.tar.gz"
      sha256 "b86db09694d2d2f862e483e653d99f55be8a37d5aaea514681ffcf1b93d59800"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.4_linux_arm64.tar.gz"
      sha256 "41f1b80a7fb3bfc27d793d6a6a99b6d911b1334677dd3b0b7bb70009f56ede99"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.13.4_linux_amd64.tar.gz"
      sha256 "13d48ba9e0604ddb7edf6639687f99447e6354d676c3e34ea3802d1a7d79068d"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

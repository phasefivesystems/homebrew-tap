class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.58"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.58_darwin_arm64.tar.gz"
      sha256 "e7db8bc136ef4f0bfbe99a260b4c2bc03f35d060701fcbeda891914351960526"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.58_darwin_amd64.tar.gz"
      sha256 "afa69e4c185f1ae6edb17a0ad8d698d630ede099d64bc8640a4253d99453c3bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.58_linux_arm64.tar.gz"
      sha256 "0f26c9ae021a33f1e8881672c1a90aa35fb33c08660dee4c2d175f8e0ef9d389"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.58_linux_amd64.tar.gz"
      sha256 "86ad59fac0ac33c7cca67edd35758cbdfb246317ca2c8f288d70adf53651834a"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

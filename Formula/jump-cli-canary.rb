class JumpCliCanary < Formula
  desc "CLI tool and MCP server for Jump Desktop remote control"
  homepage "https://jumpdesktop.com"
  version "10.16.78"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.78_darwin_arm64.tar.gz"
      sha256 "85f23647687b6df1c69cbc121824a68e950b26ded4b3eddc3ed6f9256bec06a8"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.78_darwin_amd64.tar.gz"
      sha256 "a628e77ff9b34ed2473a24773743a620c46bd4adc39e5b8fefb63c749304d5e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.78_linux_arm64.tar.gz"
      sha256 "8ba7be5e12112f0254a6f968de6545d12dd4a5c32ec943c0adf6060fa9d55070"
    else
      url "https://jumpdesktop.com/downloads/cli/jump-cli_10.16.78_linux_amd64.tar.gz"
      sha256 "94832fd8f52b185cc59f80e7d4cae497bc315a56466ade775fc0f8cfa325d146"
    end
  end

  def install
    bin.install "jump-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jump-cli version")
  end
end

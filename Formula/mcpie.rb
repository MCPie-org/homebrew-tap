class Mcpie < Formula
  desc "Contributor CLI for the MCPie public records network"
  homepage "https://mcpie.xyz/contribute"
  version "0.4.12"
  license "Apache-2.0"
  depends_on :macos

  on_arm do
    url "https://downloads.mcpie.xyz/v0.4.12/mcpie-v0.4.12-macos-arm64.tar.gz"
    sha256 "faee307ba888acb0ce8ffe93a4337c2576bce7d7853ff8a6ce050749ad42fb77"
  end

  on_intel do
    url "https://downloads.mcpie.xyz/v0.4.12/mcpie-v0.4.12-macos-x64.tar.gz"
    sha256 "49d350bf4f930addef4cfe1d33e677d44599bdba791c12fa8c72eeeae7dcd8fe"
  end

  def install
    bin.install "mcpie"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/mcpie --version").strip
  end
end

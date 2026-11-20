class Mcpie < Formula
  desc "Contributor CLI for the MCPie public records network"
  homepage "https://mcpie.xyz/contribute"
  version "0.4.13"
  license "Apache-2.0"
  depends_on :macos

  on_arm do
    url "https://downloads.mcpie.xyz/v0.4.13/mcpie-v0.4.13-macos-arm64.tar.gz"
    sha256 "da147c43d2dbde7e3afecc441cbe34f6d8cdfbbaf859f85cc2bfe5e296769d82"
  end

  on_intel do
    url "https://downloads.mcpie.xyz/v0.4.13/mcpie-v0.4.13-macos-x64.tar.gz"
    sha256 "1ad1fe55a56be1a459c8928dee96ad8a2460a750fcb88e2c11ed3d6a0d3dfcd1"
  end

  def install
    bin.install "mcpie"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/mcpie --version").strip
  end
end

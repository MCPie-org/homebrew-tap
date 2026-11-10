class Mcpie < Formula
  desc "Contributor CLI for the MCPie public records network"
  homepage "https://mcpie.xyz/contribute"
  version "0.4.4"
  license "Apache-2.0"
  depends_on :macos

  on_arm do
    url "https://downloads.mcpie.xyz/v0.4.4/mcpie-v0.4.4-macos-arm64.tar.gz"
    sha256 "edf5e85b90f9df6ccc5f217498d59bfa5cb7a34c3de0b2a8c599a65fcebffc7e"
  end

  on_intel do
    url "https://downloads.mcpie.xyz/v0.4.4/mcpie-v0.4.4-macos-x64.tar.gz"
    sha256 "77c8ab176d8c128458b52b358607b152b5b59c3fcb57b4dee49862a13d1e2e5c"
  end

  def install
    bin.install "mcpie"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/mcpie --version").strip
  end
end

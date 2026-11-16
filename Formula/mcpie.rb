class Mcpie < Formula
  desc "Contributor CLI for the MCPie public records network"
  homepage "https://mcpie.xyz/contribute"
  version "0.4.8"
  license "Apache-2.0"
  depends_on :macos

  on_arm do
    url "https://downloads.mcpie.xyz/v0.4.8/mcpie-v0.4.8-macos-arm64.tar.gz"
    sha256 "81bc897b98e9f4964c03d6338248b585b4a8ba4a6e6bc80f5774b6b9d31f46dd"
  end

  on_intel do
    url "https://downloads.mcpie.xyz/v0.4.8/mcpie-v0.4.8-macos-x64.tar.gz"
    sha256 "d9ed0e1b6c0ca22b6431db4efb046ca35c382ca3e095df49aa6427e49664eb79"
  end

  def install
    bin.install "mcpie"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/mcpie --version").strip
  end
end

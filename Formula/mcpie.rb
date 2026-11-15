class Mcpie < Formula
  desc "Contributor CLI for the MCPie public records network"
  homepage "https://mcpie.xyz/contribute"
  version "0.4.6"
  license "Apache-2.0"
  depends_on :macos

  on_arm do
    url "https://downloads.mcpie.xyz/v0.4.6/mcpie-v0.4.6-macos-arm64.tar.gz"
    sha256 "898e5c46d91b9986ee905abbe3b37bcf56f101deacf7925f588878467754c546"
  end

  on_intel do
    url "https://downloads.mcpie.xyz/v0.4.6/mcpie-v0.4.6-macos-x64.tar.gz"
    sha256 "4cad5776ac75e216cfe8aaafafd8622b0fac952fb3f4c8ad243c63f049943f24"
  end

  def install
    bin.install "mcpie"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/mcpie --version").strip
  end
end

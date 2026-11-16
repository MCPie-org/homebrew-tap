class Mcpie < Formula
  desc "Contributor CLI for the MCPie public records network"
  homepage "https://mcpie.xyz/contribute"
  version "0.4.10"
  license "Apache-2.0"
  depends_on :macos

  on_arm do
    url "https://downloads.mcpie.xyz/v0.4.10/mcpie-v0.4.10-macos-arm64.tar.gz"
    sha256 "df0da3605de42d16e5598b90ba4f6fc9638ef72e0387e6da6e39a4bf75d73601"
  end

  on_intel do
    url "https://downloads.mcpie.xyz/v0.4.10/mcpie-v0.4.10-macos-x64.tar.gz"
    sha256 "ace15bf595f08eba8b70bf2edff4f9d51a6786b55ba8c995da1c4a22eee53aca"
  end

  def install
    bin.install "mcpie"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/mcpie --version").strip
  end
end

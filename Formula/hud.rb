class Hud < Formula
  desc "Heads-up display for your developer machine in the terminal"
  homepage "https://github.com/nimble-123/macos-hud"
  url "https://github.com/nimble-123/macos-hud/releases/download/v0.8.1/hud-0.8.1-universal-apple-darwin.tar.gz"
  sha256 "8cd0585e746660bfb5142bf9805d4f169fb4a3fb9d3d8e148f57e73ae0d3cfa0"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "hud"
  end

  test do
    assert_match "hud #{version}", shell_output("#{bin}/hud --version")
  end
end

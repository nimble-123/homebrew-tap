class Hud < Formula
  desc "Heads-up display for your developer machine in the terminal"
  homepage "https://github.com/nimble-123/macos-hud"
  url "https://github.com/nimble-123/macos-hud/releases/download/v0.8.0/hud-0.8.0-universal-apple-darwin.tar.gz"
  sha256 "f75bbe3941d3bf3d73d2bee6a4ff5a3fb098dd327963ccf9e3c85c53f8d9aedf"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "hud"
  end

  test do
    assert_match "hud #{version}", shell_output("#{bin}/hud --version")
  end
end

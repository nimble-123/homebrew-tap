class Hud < Formula
  desc "Heads-up display for your developer machine in the terminal"
  homepage "https://github.com/nimble-123/macos-hud"
  url "https://github.com/nimble-123/macos-hud/releases/download/v0.6.0/hud-0.6.0-universal-apple-darwin.tar.gz"
  sha256 "7b2fae79e5cc5cbb8478a29cbe70fe69add84a2d59eeb16c64dbbda57afbfe70"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "hud"
  end

  test do
    assert_match "hud #{version}", shell_output("#{bin}/hud --version")
  end
end

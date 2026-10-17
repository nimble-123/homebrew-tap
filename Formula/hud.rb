class Hud < Formula
  desc "Heads-up display for your developer machine in the terminal"
  homepage "https://github.com/nimble-123/macos-hud"
  url "https://github.com/nimble-123/macos-hud/releases/download/v0.4.0/hud-0.4.0-universal-apple-darwin.tar.gz"
  sha256 "60c5aee348ef4c69ac58b1fa4e29a1ff7d489226b421674efd8a6f805801e2d3"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "hud"
  end

  test do
    assert_match "hud #{version}", shell_output("#{bin}/hud --version")
  end
end

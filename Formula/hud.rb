class Hud < Formula
  desc "Heads-up display for your developer machine in the terminal"
  homepage "https://github.com/nimble-123/macos-hud"
  url "https://github.com/nimble-123/macos-hud/releases/download/v0.12.0/hud-0.12.0-aarch64-apple-darwin.tar.gz"
  sha256 "aa84658a02a0b3319c28ab23a925e41d590b57d0325c401ccddf09c1434b240a"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "hud"
  end

  test do
    assert_match "hud #{version}", shell_output("#{bin}/hud --version")
  end
end

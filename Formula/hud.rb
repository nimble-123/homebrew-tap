class Hud < Formula
  desc "Heads-up display for your developer machine in the terminal"
  homepage "https://github.com/nimble-123/macos-hud"
  url "https://github.com/nimble-123/macos-hud/releases/download/v0.3.0/hud-0.3.0-universal-apple-darwin.tar.gz"
  sha256 "141547a406f478fe4a0a81efd581600a3a1934ff1079f2e2e64e290e017920fb"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "hud"
  end

  test do
    assert_match "hud #{version}", shell_output("#{bin}/hud --version")
  end
end

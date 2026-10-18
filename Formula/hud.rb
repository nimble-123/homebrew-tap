class Hud < Formula
  desc "Heads-up display for your developer machine in the terminal"
  homepage "https://github.com/nimble-123/macos-hud"
  url "https://github.com/nimble-123/macos-hud/releases/download/v0.9.0/hud-0.9.0-universal-apple-darwin.tar.gz"
  sha256 "32d73489eeb54e65479e401195412cc2b7474238ff49090bb61a072cf02bef92"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "hud"
  end

  test do
    assert_match "hud #{version}", shell_output("#{bin}/hud --version")
  end
end

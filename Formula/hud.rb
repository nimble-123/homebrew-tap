class Hud < Formula
  desc "Heads-up display for your developer machine in the terminal"
  homepage "https://github.com/nimble-123/macos-hud"
  url "https://github.com/nimble-123/macos-hud/releases/download/v0.7.0/hud-0.7.0-universal-apple-darwin.tar.gz"
  sha256 "d57b3bcb86ad8648b4d1d12627ac2997ca72e6089b3a0ab2478462d4664c2c23"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "hud"
  end

  test do
    assert_match "hud #{version}", shell_output("#{bin}/hud --version")
  end
end

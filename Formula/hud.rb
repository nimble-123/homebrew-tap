class Hud < Formula
  desc "Heads-up display for your developer machine in the terminal"
  homepage "https://github.com/nimble-123/macos-hud"
  url "https://github.com/nimble-123/macos-hud/releases/download/v0.5.0/hud-0.5.0-universal-apple-darwin.tar.gz"
  sha256 "4fc1a9d782d5e5f4ba3be42e4592158d5aaf4279037edf9219b3703e2f6de2db"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "hud"
  end

  test do
    assert_match "hud #{version}", shell_output("#{bin}/hud --version")
  end
end

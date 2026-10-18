class Hud < Formula
  desc "Heads-up display for your developer machine in the terminal"
  homepage "https://github.com/nimble-123/macos-hud"
  url "https://github.com/nimble-123/macos-hud/releases/download/v0.14.0/hud-0.14.0-aarch64-apple-darwin.tar.gz"
  sha256 "8efbe5e0e2ef35a68658a29966e1d5c09a59a5ddf7bcdb0d527fb1689ef7a1d8"
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

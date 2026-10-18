class Hud < Formula
  desc "Heads-up display for your developer machine in the terminal"
  homepage "https://github.com/nimble-123/macos-hud"
  url "https://github.com/nimble-123/macos-hud/releases/download/v0.13.0/hud-0.13.0-aarch64-apple-darwin.tar.gz"
  sha256 "865e1a3ac5343e4c844a6480c726f4f32dbfa13542e94b3704fb390b314366bf"
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

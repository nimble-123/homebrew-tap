class Hud < Formula
  desc "Heads-up display for your developer machine in the terminal"
  homepage "https://github.com/nimble-123/macos-hud"
  url "https://github.com/nimble-123/macos-hud/releases/download/v0.11.0/hud-0.11.0-aarch64-apple-darwin.tar.gz"
  sha256 "093a71bea52bf8cd6347c9836624095f8933b36cde49acad44878dccfbaed170"
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

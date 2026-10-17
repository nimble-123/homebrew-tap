class Hud < Formula
  desc "Heads-up display for your developer machine in the terminal"
  homepage "https://github.com/nimble-123/macos-hud"
  url "https://github.com/nimble-123/macos-hud/releases/download/v0.2.0/hud-0.2.0-universal-apple-darwin.tar.gz"
  sha256 "9f7bcb239d42eb5638682aff7cdc5879432f49f70a17f897fc592050e7bb68a7"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "hud"
  end

  test do
    assert_match "hud #{version}", shell_output("#{bin}/hud --version")
  end
end

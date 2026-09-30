cask "skills-hub" do
  version "0.6.0"
  sha256 "f61c7e7fe904c7095fb364f4a3689b05f11024eab50a1586696d906debb1392e"

  url "https://github.com/nimble-123/skills-hub/releases/download/v#{version}/skills-hub_#{version}_universal.dmg"
  name "skills-hub"
  desc "One library for every AI coding tool's skills"
  homepage "https://github.com/nimble-123/skills-hub"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "skills-hub.app"

  # The notes folder is deliberately absent. It is chosen by the user on first
  # launch and normally sits inside their own vault, holding hand-written,
  # tagged markdown that skills-hub did not author. `--zap` must not take it.
  zap trash: [
    "~/Library/Application Support/dev.nimble.skills-hub",
    "~/Library/Caches/dev.nimble.skills-hub",
    "~/Library/HTTPStorages/dev.nimble.skills-hub",
    "~/Library/Saved Application State/dev.nimble.skills-hub.savedState",
    "~/Library/WebKit/dev.nimble.skills-hub",
  ]
end

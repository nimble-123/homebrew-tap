cask "skills-hub" do
  version "0.4.0"
  sha256 "ad75b87875f84edf0dbe41e7180398c3c04472f41a0c37d284939b6e76c1910b"

  url "https://github.com/nimble-123/skills-hub/releases/download/v#{version}/skills-hub_#{version}_universal.dmg"
  name "skills-hub"
  desc "One library for every AI coding tool's skills"
  homepage "https://github.com/nimble-123/skills-hub"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

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

cask "takt" do
  version "0.5.0"
  sha256 "3c50115ec0f6e5c091067225b94cebebdcd879911226580d10e18534292dfa1e"

  url "https://github.com/nimble-123/takt/releases/download/v#{version}/Takt-#{version}-arm64.dmg"
  name "Takt"
  desc "Menu bar time tracker with parallel timers and Azure DevOps booking"
  homepage "https://github.com/nimble-123/takt"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Takt.app"

  uninstall quit: "de.nilslutz.takt"

  # Application Support/Takt holds the time entries and their backups. Takt has no
  # backend, so `--zap` deletes the only copy of that history.
  zap trash: [
    "~/Library/Application Support/Takt",
    "~/Library/Caches/de.nilslutz.takt",
    "~/Library/HTTPStorages/de.nilslutz.takt",
    "~/Library/Preferences/de.nilslutz.takt.plist",
    "~/Library/Saved Application State/de.nilslutz.takt.savedState",
  ]
end

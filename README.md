# homebrew-tap

Homebrew casks for [skills-hub](https://github.com/nimble-123/skills-hub) and
[Takt](https://github.com/nimble-123/takt).

```bash
brew tap nimble-123/tap
brew install --cask skills-hub
brew install --cask takt
```

Takt needs Apple Silicon and macOS 26 or later.

The builds are not signed yet, and Homebrew quarantines what it downloads, so
macOS refuses the first launch. Either allow it under System Settings →
Privacy & Security, where an **Open Anyway** button appears after the refusal,
or take the flag off yourself:

```bash
xattr -dr com.apple.quarantine /Applications/skills-hub.app
xattr -dr com.apple.quarantine /Applications/Takt.app
```

## How this repository is kept

The casks are not edited by hand. Each app's release workflow rewrites the
cask's `version` and `sha256` from the published DMG and pushes the commit,
every time a release goes out:

- `Casks/skills-hub.rb`: the `Homebrew tap` job in
  [skills-hub's release workflow](https://github.com/nimble-123/skills-hub/blob/main/.github/workflows/release.yml),
  from the universal DMG.
- `Casks/takt.rb`: the `Homebrew-Tap` job in
  [Takt's release build](https://github.com/nimble-123/takt/blob/main/.github/workflows/release-build.yml),
  from the Apple Silicon DMG.

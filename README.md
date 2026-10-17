# homebrew-tap

Homebrew casks for [skills-hub](https://github.com/nimble-123/skills-hub) and
[Takt](https://github.com/nimble-123/takt), and a formula for
[hud](https://github.com/nimble-123/macos-hud).

```bash
brew tap nimble-123/tap
brew install --cask skills-hub
brew install --cask takt
brew install hud
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

hud is a command-line tool for Apple Silicon and Intel; the formula installs
the universal binary from the GitHub release and needs no extra steps.

## How this repository is kept

The casks and the formula are not edited by hand. Each app's release workflow
updates them from the published release and pushes the commit, every time a
release goes out:

- `Casks/skills-hub.rb`: the `Homebrew tap` job in
  [skills-hub's release workflow](https://github.com/nimble-123/skills-hub/blob/main/.github/workflows/release.yml),
  from the universal DMG.
- `Casks/takt.rb`: the `Homebrew-Tap` job in
  [Takt's release build](https://github.com/nimble-123/takt/blob/main/.github/workflows/release-build.yml),
  from the Apple Silicon DMG.
- `Formula/hud.rb`: the `Homebrew tap` job in
  [hud's release build](https://github.com/nimble-123/macos-hud/blob/main/.github/workflows/release-build.yml),
  regenerated from the universal archive.

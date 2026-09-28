# homebrew-tap

Homebrew casks for [skills-hub](https://github.com/nimble-123/skills-hub).

```bash
brew tap nimble-123/tap
brew install --cask skills-hub
```

The builds are not signed yet, so macOS quarantines the app and refuses the
first launch. Either allow it under System Settings → Privacy & Security, or
skip the quarantine flag outright:

```bash
brew install --cask --no-quarantine skills-hub
```

## How this repository is kept

`Casks/skills-hub.rb` is not edited by hand. The `Homebrew tap` job in
[skills-hub's release workflow](https://github.com/nimble-123/skills-hub/blob/main/.github/workflows/release.yml)
rewrites its `version` and `sha256` from the published universal DMG and pushes
the commit, every time a release goes out.

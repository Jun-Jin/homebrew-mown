# homebrew-mown

Homebrew tap for [Mown](https://github.com/Jun-Jin/Mown) — a native macOS Markdown editor (fast, offline, zero telemetry).

## Install

```sh
brew install --cask jun-jin/mown/mown
```

That auto-taps and installs in one step. Or tap first, then install by short name:

```sh
brew tap jun-jin/mown
brew install --cask mown
```

This installs the notarized **Mown.app** into `/Applications` and puts the bundled `mown` CLI on your `PATH`.

> Recent Homebrew gates third-party taps. If an install is refused as an "untrusted tap", run `brew trust jun-jin/mown` once and retry.

## Upgrade / uninstall

```sh
brew upgrade --cask mown
brew uninstall --cask mown        # add --zap to also remove preferences
```

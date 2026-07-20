# homebrew-cassette

Homebrew tap for [Cassette](https://getcassette.app) —
a native macOS Subsonic music client.

## Install

```bash
brew trust cassettelab/cassette
brew tap cassettelab/cassette
brew install --cask cassette
```

## Documentation

How this tap is bumped, and the release pipeline that drives it, are documented in the
**[CassetteLab knowledge vault](https://github.com/CassetteLab/obsidian)** — an Obsidian
vault versioned with Git, shared across the whole ecosystem.

> The vault is private to the organisation — open an issue if you need access.

## Update

```bash
brew upgrade --cask cassette
```

## Migration

Si vous étiez installé·e depuis l'ancien tap `MathieuDubart/homebrew-cassette` :

```bash
brew untap mathieudubart/cassette
brew tap cassettelab/cassette
brew upgrade --cask cassette
```

Si Homebrew signale un conflit de cask déjà installé depuis l'ancien tap :

```bash
brew reinstall --cask cassette
```

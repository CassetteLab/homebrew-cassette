# homebrew-cassette

Homebrew tap for [Cassette](https://getcassette.app) —
a native macOS Subsonic music client.

## Install

```bash
brew tap cassettelab/cassette
brew install --cask cassette
```

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

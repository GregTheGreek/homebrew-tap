# homebrew-tap

Homebrew tap for [Trapps](https://github.com/GregTheGreek/trapps).

## Install

```sh
brew tap gregthegreek/tap
brew trust gregthegreek/tap   # newer Homebrew requires trusting third-party taps before install
brew install --cask trapps
```

`brew trust` is a one-time, per-machine acknowledgement that you trust this
tap. Recent Homebrew refuses to run casks from third-party taps until you run
it (`Error: Refusing to load cask ... from untrusted tap`); it is not a sign
anything is wrong. See [Tap Trust](https://docs.brew.sh/Tap-Trust).

## Casks

- `trapps` - a macOS menu bar app that reveals every menu bar item, including the ones hidden behind the notch.

Casks are generated from the Trapps repo (`make cask`) against each signed,
notarized release and committed here under `Casks/`.

# homebrew-tap

A personal [Homebrew](https://brew.sh/) tap for tools maintained by
[@iselegant](https://github.com/iselegant).

## Usage

Install any formula directly without tapping first:

```sh
brew install iselegant/tap/<formula>
```

Or tap once and install by short name afterwards:

```sh
brew tap iselegant/tap
brew install <formula>
```

## Available formulae

| Formula | Description | Upstream |
|---------|-------------|----------|
| `cchb`  | TUI tool for browsing and restoring past Claude Code session history | [iselegant/cchb](https://github.com/iselegant/cchb) |

## Updating

```sh
brew update
brew upgrade <formula>
```

## License

Each formula installs software under its upstream license. The formula
definitions in this repository are released under the MIT License.

# Plecostomus

A simple command history filter for the
[fish shell](https://github.com/fish-shell/fish-shell).

## Features

- Use regex filters to prevent commands from being saved in the command
  history.
- Out of the box, commands that begin with one or more spaces are ignored.
- That's it - nothing else!

## Requirements

* [fish](https://github.com/fish-shell/fish-shell) (3.0.0 or higher)

## Installation

### Using [Fisher](https://github.com/jorgebucaran/fisher)

```sh
fisher install adamchristiansen/plecostomus
```

## Configuration

Filters can be added by modifying the `plecostomus_regex_patterns` universal
variable, which is an array of regex patterns to ignore. By default it is

```sh
set -U plecostomus_regex_patterns '^ +'
```

## Alternatives

This plugin is simple by design, and supports only regex filtering. It is
simple and fast. If more features are needed, consider using:

- [Sponge](https://github.com/meaningful-ooo/sponge)

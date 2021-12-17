# Geo

A sample CLI tool made in V that prints geometric shapes to the screen.

![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/hungrybluedev/geo?sort=semver)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/hungrybluedev/geo/CI)

## Motivation

This project is meant to be a demonstration showcasing how
easy it is to make a good CLI application with V. There is
also an example to how to effectively structure a V
project with modules and conduct unit tests.

## Prerequisites

Instructions for installing V can be found
[here](https://github.com/vlang/v/blob/master/doc/docs.md#install-from-source)

## Usage

You can use `v run . [OPTIONS]` to run the tool while
developing it. If you want a production build, you can use `v -prod .`, which will generate a binary file `geo` (or `geo.exe` on Windows) at the root of the repository.

To get started, try `./geo --help`. It will print the
following usage guide:

```
geo 0.1.0
-----------------------------------------------
Usage: geo [options] [ARGS]

Description: A sample CLI app for printing geometric shapes to the terminal.

Options:
  -h, --help                Show this help text.
  -p, --shape <string>      The shape to use for the geometry.
                            Allowed shapes are: left-triangle, right-triangle, pyramid, square, diamond
  -z, --size <int>          The size parameter for the shapes.
  -m, --symbol <string>     The symbol to use for the geometry.
```

## Run Unit Tests

To run units tests, run this command at the root of this repository:

```
v test .
```

## License

This work is licensed under the MIT license, see [LICENSE](/LICENSE) for more details.

## Contributors

- [@SheatNoisette](https://github.com/SheatNoisette) - Idea, documentation, unit tests, and code improvement.
- [@hungrybluedev](https://github.com/hungrybluedev) -
  Initial implementation, maintenance, and other chores.

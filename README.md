# Curriculum Vitae

## Prerequisites

A TeX distribution with `latexmk`, `titlesec` and `enumitem`.

On macOS, install BasicTeX and the required packages:

```sh
brew install --cask basictex

# BasicTeX installs binaries under /Library/TeX/texbin — add to PATH
# (already on PATH for new shells after install; for the current shell:)
eval "$(/usr/libexec/path_helper)"

sudo tlmgr update --self
sudo tlmgr install latexmk titlesec enumitem
```

## Build

```sh
make            # builds cv.pdf
make watch      # rebuild on save (latexmk -pvc)
make clean      # remove aux files, keep cv.pdf
make distclean  # remove everything generated, including cv.pdf
```

To use a different engine (e.g. for system fonts via `fontspec`):

```sh
make ENGINE=xelatex
```

## Files

- `cv.tex` — CV source
- `Makefile` — build targets

## Credits

This CV is built on the [Rover Resume](https://github.com/<subidit>/<rover-resume>)
template by Subidit, licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).
The template has been modified.
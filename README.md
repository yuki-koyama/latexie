# latexie

Utilities for writing papers with LaTeX

## Goals

- Faster paper writing (especially in the computer science domain)
- Better readability by providing shorter commands (e.g., `\bfx` rather than `\mathbf{x}`)
- Better maintainability by providing semantic commands (e.g., `\T` rather than `\mathsf{T}` for the matrix transposition)

## Usage

```latex
\usepackage{/path/to/this/repository/latexie}
```

## Policies

### Overall

- Prefer `\newcommand` and `\renewcommand` (LaTeX) to `\def` (TeX)
  - [macros - What is the difference between \def and \newcommand? - TeX - LaTeX Stack Exchange](https://tex.stackexchange.com/questions/655/what-is-the-difference-between-def-and-newcommand)

### Math

- Prefer `\DeclareMathOperator` (from `amsmath` package) to `\newcommand`
  - [best practices - What is the difference of \mathop, \operatorname and \DeclareMathOperator? - TeX - LaTeX Stack Exchange](https://tex.stackexchange.com/questions/84302/what-is-the-difference-of-mathop-operatorname-and-declaremathoperator)
- Use `\mathsf{T}` for the matrix and vector transpose operator
  - [List of mathematical symbols - Wikipedia](https://en.wikipedia.org/wiki/List_of_mathematical_symbols) (Retrieved: 2019/07/25)

## Documentation

(TODO)

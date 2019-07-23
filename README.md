# latexie

Utilities for writing papers with LaTeX

## Usage

```latex
\usepackage{/path/to/this/repository/latexie}
```

## Policies

- Prefer `\newcommand` and `\renewcommand` (LaTeX) to `\def` (TeX)
  - [macros - What is the difference between \def and \newcommand? - TeX - LaTeX Stack Exchange](https://tex.stackexchange.com/questions/655/what-is-the-difference-between-def-and-newcommand)
- Prefer `\DeclareMathOperator` (from `amsmath` package) to `\newcommand`
  - [best practices - What is the difference of \mathop, \operatorname and \DeclareMathOperator? - TeX - LaTeX Stack Exchange](https://tex.stackexchange.com/questions/84302/what-is-the-difference-of-mathop-operatorname-and-declaremathoperator)

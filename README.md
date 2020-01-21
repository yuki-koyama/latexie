# latexie

Utilities for writing papers with LaTeX

## Goals

- Faster paper writing (especially in the computer science domain)
- Shorter commands while preserving readability (e.g., `\bfx` rather than `\mathbf{x}`)
- Better maintainability by providing semantic commands (e.g., `\T` rather than `\mathsf{T}` for the matrix transposition)

## Usage

```latex
\usepackage{/path/to/this/repository/latexie}
```

## Policies

### Overall

- Prefer `\newcommand` and `\renewcommand` (LaTeX) to `\def` (TeX)
  - [macros - What is the difference between \def and \newcommand? - TeX - LaTeX Stack Exchange](https://tex.stackexchange.com/questions/655/what-is-the-difference-between-def-and-newcommand)
- Prefer `\newcommand*` to `\newcommand` if it is the intention
  - [macros - What's the difference between \newcommand and \newcommand*? - TeX - LaTeX Stack Exchange](https://tex.stackexchange.com/questions/1050/whats-the-difference-between-newcommand-and-newcommand)

### Math

- Prefer `\DeclareMathOperator` (from `amsmath` package) to `\newcommand`
  - [best practices - What is the difference of \mathop, \operatorname and \DeclareMathOperator? - TeX - LaTeX Stack Exchange](https://tex.stackexchange.com/questions/84302/what-is-the-difference-of-mathop-operatorname-and-declaremathoperator)
- Use `\mathsf{T}` for the matrix and vector transpose operator
  - [List of mathematical symbols - Wikipedia](https://en.wikipedia.org/wiki/List_of_mathematical_symbols) (Retrieved: 2019/07/25)

## Documentation

### Options

- `noannotation`: If this option is passed, the annotation commands do not display annotaions. More specifically, `\note` and `\todo` do not rendered, and `\spot` displays its content without colored.

## Dependencies

- amsmath
- amsfonts
- ifthen
- xcolor

## Math Examples

Before:
```latex
p(\mathcal{D} \:\vert\: \boldsymbol{\theta})
```

After:
```latex
\cprob{ \calD }{ \bftheta }
```

Result:

<a href="https://www.codecogs.com/eqnedit.php?latex=p(\mathcal{D}&space;\:\vert\:&space;\boldsymbol{\theta})" target="_blank"><img src="https://latex.codecogs.com/svg.latex?p(\mathcal{D}&space;\:\vert\:&space;\boldsymbol{\theta})" title="p(\mathcal{D} \:\vert\: \boldsymbol{\theta})" /></a>

----

Before:
```latex
\mathcal{N}(\mathbf{x}; \boldsymbol{\mu}, \boldsymbol{\Sigma})
=
\frac{1}{(2 \pi)^{\frac{n}{2}} \det(\boldsymbol{\Sigma})^{\frac{1}{2}}}
\exp \left\{
  - \frac{1}{2} (\mathbf{x} - \boldsymbol{\mu})^{\mathsf{T}} \boldsymbol{\Sigma}^{-1} (\mathbf{x} - \boldsymbol{\mu})
\right\}
```

After:
```latex
\calN(\bfx; \bfmu, \bfSigma)
=
\frac{1}{(2 \pi)^{\frac{n}{2}} \det(\bfSigma)^{\frac{1}{2}}}
\exp \left\{
  - \frac{1}{2} (\bfx - \bfmu)^\T \bfSigma^\inv (\bfx - \bfmu)
\right\}
```

Result:

<a href="https://www.codecogs.com/eqnedit.php?latex=\mathcal{N}(\mathbf{x};&space;\boldsymbol{\mu},&space;\boldsymbol{\Sigma})&space;=&space;\frac{1}{(2&space;\pi)^{\frac{n}{2}}&space;\det(\boldsymbol{\Sigma})^{\frac{1}{2}}}&space;\exp&space;\left\{&space;-&space;\frac{1}{2}&space;(\mathbf{x}&space;-&space;\boldsymbol{\mu})^{\mathsf{T}}&space;\boldsymbol{\Sigma}^{-1}&space;(\mathbf{x}&space;-&space;\boldsymbol{\mu})&space;\right\}" target="_blank"><img src="https://latex.codecogs.com/svg.latex?\mathcal{N}(\mathbf{x};&space;\boldsymbol{\mu},&space;\boldsymbol{\Sigma})&space;=&space;\frac{1}{(2&space;\pi)^{\frac{n}{2}}&space;\det(\boldsymbol{\Sigma})^{\frac{1}{2}}}&space;\exp&space;\left\{&space;-&space;\frac{1}{2}&space;(\mathbf{x}&space;-&space;\boldsymbol{\mu})^{\mathsf{T}}&space;\boldsymbol{\Sigma}^{-1}&space;(\mathbf{x}&space;-&space;\boldsymbol{\mu})&space;\right\}" title="\mathcal{N}(\mathbf{x}; \boldsymbol{\mu}, \boldsymbol{\Sigma}) = \frac{1}{(2 \pi)^{\frac{n}{2}} \det(\boldsymbol{\Sigma})^{\frac{1}{2}}} \exp \left\{ - \frac{1}{2} (\mathbf{x} - \boldsymbol{\mu})^{\mathsf{T}} \boldsymbol{\Sigma}^{-1} (\mathbf{x} - \boldsymbol{\mu}) \right\}" /></a>

----

Before:
```latex
\begin{bmatrix}
  \mathbf{A} & \mathbf{B} \\
  \mathbf{C} & \mathbf{D}
\end{bmatrix}^{-1}
=
\begin{bmatrix}
  \mathbf{A}^{-1} ( \mathbf{I} + \mathbf{B} ( \mathbf{D} - \mathbf{C} \mathbf{A}^{-1} \mathbf{B} )^{-1} \mathbf{C} \mathbf{A}^{-1} ) &
  - \mathbf{A}^{-1} \mathbf{B} ( \mathbf{D} - \mathbf{C} \mathbf{A}^{-1} \mathbf{B} )^{-1} \\
  - ( \mathbf{D} - \mathbf{C} \mathbf{A}^{-1} \mathbf{B} )^{-1} \mathbf{C} \mathbf{A}^{-1} &
  ( \mathbf{D} - \mathbf{C} \mathbf{A}^{-1} \mathbf{B} )^{-1}
\end{bmatrix}
```

After:
```latex
\bmat{
  \bfA & \bfB \\
  \bfC & \bfD
}^\inv
=
\bmat{
  \bfA^\inv ( \bfI + \bfB ( \bfD - \bfC \bfA^\inv \bfB )^\inv \bfC \bfA^\inv ) &
  - \bfA^\inv \bfB ( \bfD - \bfC \bfA^\inv \bfB )^\inv \\
  - ( \bfD - \bfC \bfA^\inv \bfB )^\inv \bfC \bfA^\inv &
  ( \bfD - \bfC \bfA^\inv \bfB )^\inv
}
```

Result:

<a href="https://www.codecogs.com/eqnedit.php?latex=\begin{bmatrix}&space;\mathbf{A}&space;&&space;\mathbf{B}&space;\\&space;\mathbf{C}&space;&&space;\mathbf{D}&space;\end{bmatrix}^{-1}&space;=&space;\begin{bmatrix}&space;\mathbf{A}^{-1}&space;(&space;\mathbf{I}&space;&plus;&space;\mathbf{B}&space;(&space;\mathbf{D}&space;-&space;\mathbf{C}&space;\mathbf{A}^{-1}&space;\mathbf{B}&space;)^{-1}&space;\mathbf{C}&space;\mathbf{A}^{-1}&space;)&space;&&space;-&space;\mathbf{A}^{-1}&space;\mathbf{B}&space;(&space;\mathbf{D}&space;-&space;\mathbf{C}&space;\mathbf{A}^{-1}&space;\mathbf{B}&space;)^{-1}&space;\\&space;-&space;(&space;\mathbf{D}&space;-&space;\mathbf{C}&space;\mathbf{A}^{-1}&space;\mathbf{B}&space;)^{-1}&space;\mathbf{C}&space;\mathbf{A}^{-1}&space;&&space;(&space;\mathbf{D}&space;-&space;\mathbf{C}&space;\mathbf{A}^{-1}&space;\mathbf{B}&space;)^{-1}&space;\end{bmatrix}" target="_blank"><img src="https://latex.codecogs.com/svg.latex?\begin{bmatrix}&space;\mathbf{A}&space;&&space;\mathbf{B}&space;\\&space;\mathbf{C}&space;&&space;\mathbf{D}&space;\end{bmatrix}^{-1}&space;=&space;\begin{bmatrix}&space;\mathbf{A}^{-1}&space;(&space;\mathbf{I}&space;&plus;&space;\mathbf{B}&space;(&space;\mathbf{D}&space;-&space;\mathbf{C}&space;\mathbf{A}^{-1}&space;\mathbf{B}&space;)^{-1}&space;\mathbf{C}&space;\mathbf{A}^{-1}&space;)&space;&&space;-&space;\mathbf{A}^{-1}&space;\mathbf{B}&space;(&space;\mathbf{D}&space;-&space;\mathbf{C}&space;\mathbf{A}^{-1}&space;\mathbf{B}&space;)^{-1}&space;\\&space;-&space;(&space;\mathbf{D}&space;-&space;\mathbf{C}&space;\mathbf{A}^{-1}&space;\mathbf{B}&space;)^{-1}&space;\mathbf{C}&space;\mathbf{A}^{-1}&space;&&space;(&space;\mathbf{D}&space;-&space;\mathbf{C}&space;\mathbf{A}^{-1}&space;\mathbf{B}&space;)^{-1}&space;\end{bmatrix}" title="\begin{bmatrix} \mathbf{A} & \mathbf{B} \\ \mathbf{C} & \mathbf{D} \end{bmatrix}^{-1} = \begin{bmatrix} \mathbf{A}^{-1} ( \mathbf{I} + \mathbf{B} ( \mathbf{D} - \mathbf{C} \mathbf{A}^{-1} \mathbf{B} )^{-1} \mathbf{C} \mathbf{A}^{-1} ) & - \mathbf{A}^{-1} \mathbf{B} ( \mathbf{D} - \mathbf{C} \mathbf{A}^{-1} \mathbf{B} )^{-1} \\ - ( \mathbf{D} - \mathbf{C} \mathbf{A}^{-1} \mathbf{B} )^{-1} \mathbf{C} \mathbf{A}^{-1} & ( \mathbf{D} - \mathbf{C} \mathbf{A}^{-1} \mathbf{B} )^{-1} \end{bmatrix}" /></a>

## Limitations

Some commands are probably not very effective with
- code highlighting
- code completion
- code snippets

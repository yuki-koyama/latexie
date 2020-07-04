\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{latexie-article}[2020/07/03]

\LoadClass[a4paper]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[tt=false]{libertine}
\RequirePackage[]{microtype}
\RequirePackage[]{hyperref}
\RequirePackage[parfill]{parskip}
\RequirePackage[numbers,square,semicolon]{natbib}
\RequirePackage[]{graphicx}
\RequirePackage[font={small,sf},labelfont={bf}]{caption}
\RequirePackage{booktabs}
\RequirePackage[a4paper, margin=3cm]{geometry}
\RequirePackage{xcolor}

\newcommand{\shortcite}[1]{\cite{#1}}
\renewcommand{\UrlFont}{\small\bf\ttfamily}

\definecolor[named]{ACMPurple}{cmyk}{0.55,1,0,0.15}
\definecolor[named]{ACMDarkBlue}{cmyk}{1,0.58,0,0.21}

\hypersetup{colorlinks,
  linkcolor=ACMPurple,
  citecolor=ACMPurple,
  urlcolor=ACMDarkBlue,
  filecolor=ACMDarkBlue}

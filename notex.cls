\ProvidesClass{NoTex}[2021/12/16 v0.0.2]

\LoadClass[UTF8]{ctexbook}

\RequirePackage{geometry}
\geometry{
	inner = 1in,
	outer = 1.5in,
	vmargin = 1in,
	marginparwidth = 1in,
}

\RequirePackage{minted}

\renewcommand*\maketitle{
	\thispagestyle{empty}
	\vspace*{\stretch{0.5}}
	\noindent\begin{minipage}{\textwidth}
	\raggedleft
	{\huge \bfseries \@title}
	\noindent\rule[-1ex]{\textwidth}{5pt}\\[2.5ex]
	\end{minipage}
	\vspace{\stretch{2}}
}

\newenvironment{code}[1]
	{\VerbatimEnvironment
	 \begin{minted}{#1}}
	{\end{minted}}

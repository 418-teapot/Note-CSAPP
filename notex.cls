\ProvidesClass{NoTex}[2021/12/16 v0.0.2]

\LoadClass[UTF8]{ctexbook}

\RequirePackage{geometry}
\geometry{
	inner = 1in,
	outer = 1.5in,
	vmargin = 1in,
	marginparwidth = 1in,
}

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

\RequirePackage{color, xcolor}
\definecolor{light-gray}{gray}{0.95}

\RequirePackage{minted}
\newminted{cpp}{bgcolor=light-gray, xleftmargin=\parindent, linenos=true, mathescape=true}
\newmintinline{cpp}{}

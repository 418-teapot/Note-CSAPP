\ProvidesClass{NoTex}[2021/12/16 v0.0.2]

\LoadClass[UTF8]{ctexrep}

\xeCJKsetup{AutoFallBack = true}
\setCJKfallbackfamilyfont{\CJKrmdefault}{
    {Source Han Serif SC},
    {Source Han Serif CN},
    {PingFangSC-Regular}
}

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

%\RequirePackage{color, xcolor}
\RequirePackage{color}
\RequirePackage[usenames, dvipsnames]{xcolor}
\definecolor{light-gray}{gray}{0.95}

\RequirePackage{minted}
\newminted{cpp}{
    bgcolor = light-gray,
    xleftmargin = \parindent,
    linenos = true,
    autogobble = true,
    mathescape = true
}
\newmintinline{cpp}{}
\newminted{gas}{
    bgcolor = light-gray,
    xleftmargin = \parindent,
    autogobble = true,
    linenos = true
}

\RequirePackage{enumitem}
\AddEnumerateCounter{\chinese}{\chinese}{}

\RequirePackage{tikz}
\usetikzlibrary{calc, decorations.pathreplacing, positioning}

\newenvironment{tikzfig}
    {
        \begin{figure}[!ht]
        \centering
        \begin{tikzpicture}[node font=\small]
    }
    {
        \end{tikzpicture}
        \end{figure}
    }

\RequirePackage{booktabs}

\RequirePackage[ruled, linesnumbered]{algorithm2e}

\RequirePackage{amsthm}
\RequirePackage[many]{tcolorbox}
\RequirePackage{thmtools}
\newlength{\spacelength}
\settowidth{\spacelength}{\normalfont\ }
\declaretheoremstyle[
    headfont = {\bfseries\sffamily\footnotesize},
    notefont = {\itshape},
    bodyfont = {\itshape},
    headpunct = {\relax},%\newline,
    headformat = {%
        \makebox[0pt][r] {\NAME\ \NUMBER\hspace{\marginparsep}}
        \hskip-\spacelength{\normalsize\NOTE}
    },
]{theorem}
\declaretheorem[style=theorem]{theorem}

\theoremstyle{theorem}
\newtheorem{definition}{Definition}
\tcolorboxenvironment{definition}{
    boxrule = 0pt,
    boxsep = 0pt,
    colback = {White!90!Cerulean},
    enhanced jigsaw,
    borderline west = {1pt}{0pt}{Cerulean},
    sharp corners,
    before skip = 10pt,
    after skip = 10pt,
    left = 5pt,
    right = 5pt,
    breakable,
}

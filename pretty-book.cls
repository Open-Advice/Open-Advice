% Basic class provision
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{pretty-book}[2011-05-02 Pretty book style for Lydia]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass{book}

%\usepackage{bera}
\usepackage{url}
\usepackage{setspace}
\usepackage{fancyhdr}
\usepackage{sectsty}
\usepackage{graphicx}
\usepackage{multirow}
%\usepackage[hyperindex,breaklinks,pdfborder={0 0 0}]{hyperref}

% Details required from input
\renewcommand{\author}[1]{\ifx\empty#1\else\gdef\@author{#1}\fi}
\renewcommand{\title}[1]{\ifx\empty#1\else\gdef\@title{#1}\fi}
\newcommand{\subtitle}[1]{\ifx\empty#1\else\gdef\@subtitle{#1}\fi}

% Now the layout details
% Fuck with these and I will fuck with you
\setlength{\topmargin}{-0.9cm}
\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt plus 2pt minus 2pt}
\setlength{\textwidth}{15.2cm}
\setlength{\textheight}{24.3cm}
\setlength{\evensidemargin}{1.5cm}
\setlength{\oddsidemargin}{1.5cm}
\setlength{\footskip}{1.1cm}

\allsectionsfont{\sffamily\raggedright}

\setcounter{tocdepth}{2}

\renewcommand{\chaptermark}[1]{
  \markboth{\thechapter.\ #1}
}
\renewcommand{\sectionmark}[1]{
  \markright{\thesection\ #1}
}
\fancyhf{}
\fancyhead[L]{\small \nouppercase{\leftmark}}
\fancyhead[R]{\small \thepage}
\fancyfoot[L]{\small \@title}
\fancyfoot[R]{\small \@author}

\renewcommand{\footrulewidth}{0.4pt}
\renewcommand{\headrulewidth}{0.4pt}

\newenvironment{abstract}{%
  \chapter*{Abstract}
  \addcontentsline{toc}{chapter}{Abstract}
  \begin{center}
    {\large \textbf \@title}\\
    by\\
    \@author
  \end{center}
  \vskip 0.6cm
  \begingroup
}{
  \endgroup
}

\newenvironment{preface}{%
  \chapter*{Preface}
  \addcontentsline{toc}{chapter}{Preface}
  \begingroup
}{
  \endgroup
}

\newenvironment{acknowledgements}{%
  \clearemptydoublepage
  \thispagestyle{plain}
  \begin{center}
    \section*{Acknowledgements}
  \end{center}
  \begingroup
}{
  \newpage
  \endgroup
}

\newenvironment{introduction}{%
  \begin{center}
    \begin{minipage}{0.8\textwidth}
      \setlength{\parskip}{6pt plus 2pt minus 2pt}
      \setlength{\parindent}{0pt}
	\begingroup
}{
  \endgroup
    \end{minipage}
  \end{center}
  \vskip 1cm
}

\newenvironment{dedication}{%
  \thispagestyle{empty} 
  \begingroup
}{
  \endgroup
}

% Nice chapter headings
\def\thickhrulefill{
  \leavevmode \leaders \hrule \hfill \kern \z@
}

\def\@makechapterhead#1{%
  {\parindent \z@ \centering \reset@font
    \if@mainmatter
      \thickhrulefill\quad
          {\scshape \raisebox{-0.11cm}{\@chapapp{} \thechapter}}%
          \quad \thickhrulefill
	  \else
          \thickhrulefill
	  \fi
          \par\nobreak
        \vspace*{10\p@}%
        \interlinepenalty\@M
        \hrule
        \vspace*{10\p@}%
        \LARGE \sffamily \bfseries #1\par\nobreak
        \par
        \vspace*{10\p@}%
        \hrule
    \vskip 40\p@
  }
}

\def\@makeschapterhead#1{%
  {\parindent \z@ \centering \reset@font
    \hrule
    \vspace*{10\p@}%
    \LARGE \sffamily \bfseries #1\par\nobreak
    \par
    \vspace*{10\p@}%
    \hrule
    \vskip 40\p@
  }
}

\endinput

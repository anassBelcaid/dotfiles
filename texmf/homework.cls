% Documentation {{{ %
% Personal class for a computer science
% homework. The main aspects for this class are:

% 1 - simple from article (nothing fancy) so far
% 2 - Exercice environement with proper counter
% 3 - Syntax highliting command like alert and code
% 4 - Code environement with minted

% }}} Documentation %
%- Basic class and package {{{ -
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2020-06-13 CS homework]
\LoadClass[twocolumn]{article}
% colors
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{tikz}
\usetikzlibrary{decorations,positioning}
\RequirePackage{pgfplots}
\RequirePackage{minted}
\RequirePackage{geometry}
 \geometry{
 a4paper,
 left=10mm,
 right=10mm,
 top=10mm,
 }

%}}} Basic class and package -
% Special colors definition {{{ %
\definecolor{lightBlue}{RGB}{148,176,188}
\definecolor{sexyRed}{RGB}{175,30,45}
% }}} Special colors definition %
% Fix the title page {{{ %
% }}} Fix the title page %
% Highlighting {{{ %
% important with red hightligh
\newcommand{\alert}[1]{\textbf{\textcolor{sexyRed}{#1}} }

%nooot much useful, but same structure
\newcommand{\structure}[1]{\textbf{\textcolor{CadetBlue}{#1}} }

% }}} Highlighting %
% counter {{{ %
\newcounter{exo}
\setcounter{exo}{1}
% }}} counter %
% Environnement {{{ %
\newcommand{\exercice}[1]
{
\begin{center}
  \begin{tikzpicture} 
    \node[thick, rounded corners, draw, fill=MidnightBlue!40,
    minimum width=2cm] (exo) at (0.25
    \textwidth, 0) {\theexo: #1 } ;

    % \path[thin,draw,double] (2,0)--(exo)--(0.5\textwidth, 0);
    
    %step exo
    \stepcounter{exo}
  \end{tikzpicture}
\end{center}
}
% }}} Environnement %
% Fold description {{{ %
%customize the make title
\renewcommand{\maketitle}
{
  \begin{tikzpicture}
    \node[rounded corners, draw=MidnightBlue, fill=MidnightBlue!10,
    minimum height=2cm,
    minimum width=\textwidth,
    align=right] (title) at (0,0) {\Large\textbf{\@title}};

%placing the speciality
    \node[above right= 0mm and -3cm of title]{\small Computer Science};
%placing the homework label
    \node[above left = -0cm and -2.2cm of title,
    draw=MidnightBlue, thick]
{\textbf{Homework}};
  \end{tikzpicture}
\vspace*{1cm}

}
% }}} Fold description %

% Environment  {{{ %
\setminted[python]{frame=lines, fontsize=\scriptsize,
framesep=2mm}
\usemintedstyle{tango}

\newcommand{\code}[1]
{\mintinline{python}{#1}}
% }}}  %

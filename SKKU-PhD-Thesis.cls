% Author: Nguyen Duc Dung
% NOTE: This file is made based on the thesis format of ICE school.
%       The layout of the thesis might change

% 2024: Updated by Dinh Duy Kha to match the Dept. of Computer Science and Engineering template
% NOTE: xetex is now required for ttf font loading.

% First identify the class:
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SKKU-PhD-Thesis}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}

\ProcessOptions

\LoadClass{report}

%%----------------
\renewcommand{\bibname}{References}
\newcommand*{\TitleFont}{%
	\fontsize{24}{24}%
	\selectfont}
\newcommand*{\TitleFontBold}{%
	\fontsize{24}{24}%
	\selectfont\bfseries}
\newcommand*{\subTitleFont}{%
	\fontsize{18}{18}%
	\selectfont}
\newcommand*{\subsubTitleFont}{%
	\fontsize{16}{16}%
	\selectfont}
\newcommand*{\SectionFont}{%
	\fontsize{14}{14}%
	\selectfont}
\newcommand*{\SubSectionFont}{%
	\fontsize{12}{12}%
	\selectfont}


%\usepackage[T1]{fontenc}
%\usepackage{CJKutf8}
%\usepackage[english]{babel}

\usepackage[cjk]{kotex}
\usepackage{setspace}
%\usepackage{xcolor}
%\usepackage{url}
%
%\def\cs#1{\texttt{\color{teal}\char92 #1}}
%\def\koTeX{k$o$.\kern-.1667em\TeX}
%\def\cjkko{\mbox{CJK-k\kern-.1em\textit{o}}}


%\newenvironment{Korean}{\CJKfamily{mj}}{}

\def\title#1{\def\@title{#1}}
\def\department#1{\def\@department{#1}}
\def\year#1{\def\@year{#1}}
\def\month#1{\def\@month{#1}}
\def\approvemonth#1{\def\@approvemonth{#1}}
\def\advisor#1{\def\@advisor{#1}}
\def\committeeadvisor#1{\def\@committeeadvisor{#1}}
\def\committeechair#1{\def\@committeechair{#1}}
\def\firstmember#1{\def\@firstmember{#1}}
\def\secondmember#1{\def\@secondmember{#1}}
\def\thirdmember#1{\def\@thirdmember{#1}}

\newcommand{\makecover}{
	\thispagestyle{empty}
	{\centering \subTitleFont Ph.D. Dissertation\vfill}
	{\centering \TitleFont \@title \vfill}
	{\centering \subTitleFont \@author \vfill}
	{\centering \setstretch{2} \subTitleFont%
		The Graduate School\\
		Sungkyunkwan University\\
		Department of \@department\\
	}
	\newpage
	\thispagestyle{empty}
}

\newcommand{\makeinsidecover}{
	\thispagestyle{empty}
	{\centering \subTitleFont Ph.D. Dissertation\vfill}
	{\centering \TitleFont \@title\vfill}
	{\centering \subTitleFont \@author\vfill}
	{\centering \setstretch{2} \subTitleFont%
		The Graduate School\\
		Sungkyunkwan University\\
		Department of \@department\\
	}
	\newpage
}

\newcommand{\makesubmissionform}{
	\thispagestyle{empty}
	{\centering \TitleFont \@title\vfill}
	{\centering \subTitleFont \@author\vfill}
	{\centering \setstretch{2} \subsubTitleFont
		A Ph.D. Dissertation Submitted to the Department of  \@department{} and the\\
		Graduate School of Sungkyunkwan University in partial fulfillment of
		the requirements for the\\
		degree of Ph.D. in Engineering\vfill}
	{\centering \subsubTitleFont \@month{} \@year\vfill}
	{\centering \setstretch{2} \subTitleFont Supervised by\\
		\@advisor\\
		Major Advisor\\
	}
	\newpage
}
\newcommand{\makecertification}{
	\thispagestyle{empty}
	{\centering \setstretch{2} \subTitleFont This certifies that the Ph.D. Dissertation of \\
		\@author\ is approved.\vfill}
	\begin{minipage}{0.45\linewidth}
		~
	\end{minipage}%
	\begin{minipage}{0.55\linewidth}
		% Somehow only hphantom works here
		\setstretch{1.75}
		{\SectionFont \hphantom{CCCCCCC}\textcolor{gray}{[signature]}\vspace{-.8em}}
		\par\rule{\textwidth}{1pt} \\
		{\raggedright \SubSectionFont Committee Chair : \@committeechair \\~\\ \vspace{-.5em}}
		{\SectionFont \hphantom{CCCCCCC}\textcolor{gray}{[signature]}\vspace{-.8em}}
		\par\rule{\textwidth}{1pt} \\
		{\raggedright \SubSectionFont Committee Member : \@firstmember\\~\\\vspace{-.5em}}
		{\SectionFont \hphantom{CCCCCCC}\textcolor{gray}{[signature]}\vspace{-.8em}}
		\par\rule{\textwidth}{1pt} \\
		{\raggedright \SubSectionFont Committee Member : \@secondmember \\~\\\vspace{-.5em}}
		{\SectionFont \hphantom{CCCCCCC}\textcolor{gray}{[signature]}\vspace{-.8em}}
		\par\rule{\textwidth}{1pt} \\
		{\raggedright \SubSectionFont Committee Member : \@thirdmember \\~\\\vspace{-.5em}}
		{\SectionFont \hphantom{CCCCCCC}\textcolor{gray}{[signature]}\vspace{-.8em}}
		\par\rule{\textwidth}{1pt} \\
		{\raggedright \SubSectionFont Major Advisor: \@committeeadvisor \\~\\}
	\end{minipage}
	\vfill
	{\centering \setstretch{2} \subTitleFont The Graduate School\\
		Sungkyunkwan University\\
		\@approvemonth{} \@year\\}
}

\newcommand{\makesidecover}{
	% \newgeometry{top=1in,bottom=10mm}
	\thispagestyle{empty}

	\vfill
	\begin{minipage}{\linewidth}
		\centering
		\rotatebox{-90}{Ph.D. Dissertation}
	\end{minipage}
	\vfill
	\begin{minipage}{\linewidth}
		\centering
		\rotatebox[origin=c]{-90}{\parbox{9cm}{
				\begin{spacing}{1}
					\vspace{-.3cm}
					\centering \@title
				\end{spacing}
			}}

	\end{minipage}
	\vfill
	\begin{minipage}{\linewidth}
		\centering
		% \rotatebox{-90}{\@year}
		\begin{spacing}{1} 2 \\ 0 \\ 2 \\ 6 \end{spacing}
		% \parbox{1mm}{\begin{spacing}{1} 2 0 2 5 \end{spacing}}%
	\end{minipage}
	\vfill
	\begin{minipage}{\linewidth}
		\centering
		\rotatebox{-90}{\@author}
	\end{minipage}
	% \vfill
	\clearpage
	% \restoregeometry
}

\newcommand{\makeabstracttitle}{
	\phantomsection %\label{chap:Abstract}
	\addcontentsline{toc}{chapter}{Abstract}
	\chapter*{Abstract}\label{chap:Abstract}
	{\centering \subTitleFont \bfseries \@title\\~\\}
}

% Set paper size and margins
\RequirePackage[a4paper,margin=1in]{geometry}
\RequirePackage{layout}
\RequirePackage{indentfirst}
\RequirePackage{fontspec,newunicodechar}

\usepackage[table]{xcolor}
\usepackage{titlesec}

\let\oldfootnote\footnote
\renewcommand{\footnote}[1]{\oldfootnote{\fontsize{9}{9}\selectfont#1}}




% \fallbackchar{-}
% \fallbackchar{}

% \newunicodechar{^^^^007e}{{\JapSubstFont\symbol{"007e}}}
%
% \newunicodechar{^^^^2013}{{\emojifont\symbol{"260E}}} % ☎️
% \iffontchar \font  "2e3a
% \iffontchar\font "2e3a \else {%
% \newunicodechar{^^^^2e3a}{—\,—}%
% } \fi
% \newfontfamily\fallbackfont{cmunrm.ttf}
\newfontfamily\fallbackfont{Noto Serif CJK KR}
% \DeclareTextFontCommand{\textfallback}{\fallbackfont}
\newcommand{\fallbackchar}[2][\textfallback]{%
	\newunicodechar{#2}{#1{#2}}%
}
%
% \fallbackchar{‐}
% \fallbackchar{⸺}
% \newunicodechar{^^^^2010}{testtest}
% \newunicodechar{^^^^2010}{testset}
% \newunicodechar{^^^^2011}{testset}
% \newunicodechar{^^^^2012}{testset}
% \newunicodechar{X}{{\fallbackfont{X}}}
\newunicodechar{^^^^2013}{{\fallbackfont{^^^^2013}}}
\newunicodechar{^^^^2014}{{\fallbackfont{^^^^2014}}}
% \newunicodechar{^^^^FFFD}{{\fallbackfont{^^^^FFFD}}}
\newunicodechar{^^^^0306}{{\fallbackfont{^^^^0306}}}
\newunicodechar{^^^^0161}{{\fallbackfont{^^^^0161}}}
\newunicodechar{^^^^0103}{{\fallbackfont{^^^^0103}}}
\newunicodechar{^^^^2022}{{\fallbackfont{^^^^2022}}}
\DeclareRobustCommand\dash{{\fallbackfont{^^^^2014}}}

\setmainfont{HMJ}[
	% Mapping=tex-text,
	Ligatures=TeX,
	AutoFakeSlant=0.3,AutoFakeBold=4, % There are no no italic and bold faces so we fake them LOL
	Path=./,
	Extension=.ttf,
	UprightFont=korean.h2mjsm,
	% UprightFont=HYSinMunMyeongJo,
	% BoldFont=*-Bold,
	% ItalicFont=*-Italic,
	% BoldItalicFont=*-BoldItalic
]

% % \newunicodechar{^^^^2013}{\textfallback{\char"2013}}
% \newunicodechar{^^^^2014}{testset}
% \newunicodechar{^^^^2015}{testset}

% Make the captions in your floats of the form:
% Fig. 1
% instead of:
% Figure 1

% set layout
\setlength\hoffset{0in}
\setlength\voffset{0in}
\setlength\oddsidemargin{ 0.18in}
\setlength\evensidemargin{0.18in}
\setlength\topmargin{-0.41in} % 0.59 in from edge
%\headheight = 12pt
\setlength\headsep{1.34252in}
\setlength\textheight{7.5129in} % 11.6929 - 2.09*2
\setlength\textwidth{5.90772in}
\setlength\marginparsep{0in}
\setlength\marginparwidth{1.0in}
\setlength\footskip{1.5in}



\setlength\parindent{0.20in}%0.25in}
\setlength\parskip{0pt}%0.25in}





% switch to double spacing
% \renewcommand{\baselinestretch}{1.54} %{1.66}
\renewcommand{\baselinestretch}{2} %{1.66}

\renewcommand{\figurename}{Figure}
\renewcommand{\tablename}{Table}
\renewcommand{\bibname}{References}

% Redefining the \section command:
%\renewcommand*\thesection{\arabic{section}}

\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}

% \renewcommand{\section}{\@startsection
% {section}%                   % the name
% {1}%                         % the level
% {0mm}%                       % the indent
% {-\baselineskip}%            % the before skip
% {0.3\baselineskip}%          % the after skip
% {\fontsize{16pt}{16pt}\large\bfseries}} % the style

% Redefining the chapter heading styles
%\titleformat{\chapter}[display]
%  {\Huge}{\chaptertitlename \thechapter}{16pt}{\Huge}


\titleformat{\section}
{\bfseries\fontsize{14}{14}\selectfont}
{\thesection}
{10pt}
{\vspace{1em}}

\titleformat{\subsection}
{\normalfont}
{\thesubsection}
{10pt}
{\vspace{1em}}


\titleformat{\subsubsection}[runin]
{\bfseries\normalsize\selectfont}
{\thesubsubsection}
{10pt}
{}

%   \titleformat{\subsubsection}
% {\normalfont\normalsize\bfseries}{\thesubsubsection}{1em}{}


\titleformat{name=\section,numberless}
{\bfseries\fontsize{14}{14}\selectfont}
{\thesection}
{10pt}
{\vspace{1em}}

\renewcommand\thesection{\arabic{section}.}
\renewcommand\thesubsection{\Alph{subsection}.}
\renewcommand\thesubsubsection{\Alph{subsection}.\arabic{subsubsection}.}

\def\@makechapterhead#1{%
	\vspace*{0\p@}%
	{\parindent \z@
		% \raggedright
		\centering
		\reset@font\fontsize{16pt}{16pt}\selectfont\bfseries
		{Chapter \thechapter{}. \uppercase{#1} \\~\\}   % #1 is the chapter title
		\par\nobreak
		\vskip 0\p@
	}}

% For reference chapter
\def\@makeschapterhead#1{%
	\vspace*{0\p@}%
	{\parindent \z@
		\raggedright
		\reset@font\fontsize{16pt}{16pt}\selectfont\bfseries
		{#1}%\qquad\hphantom{\thechapter{}}\  \quad #1}
		\par\nobreak
		\vspace{1em}
		\vskip 0\p@
	}}

%% Numbered chapter heading style:
%
%\renewcommand{\@makechapterhead}[1]{%
%  \vspace*{0\p@}%
%  {\parindent \z@ \raggedright \normalfont
%    \ifnum \c@secnumdepth >\m@ne
%        \huge\scshape \@chapapp\space \thechapter    % Chapter followed by number
%        \par\nobreak
%        \vskip 0\p@
%    \fi
%    \interlinepenalty\@M
%    \Huge \scshape #1\par                            % chapter title
%    \nobreak
%    \vskip 0\p@
%  }}
%
%% Unnumbered chapter heading style:
%
%\renewcommand{\@makeschapterhead}[1]{%
%  \vspace*{0\p@}%
%  {\parindent \z@ \raggedright
%    \normalfont
%    \interlinepenalty\@M
%    \Huge \scshape #1\par                            % chapter title
%    \nobreak
%    \vskip 0\p@
%  }}
%
%% end of file:
\endinput




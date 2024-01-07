\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SciPost} % SciPost Latex Template v1f(2023-10)


\LoadClass[11pt,a4paper]{article}


% Layout
\RequirePackage[top=12mm,bottom=12mm,left=30mm,right=30mm,head=12mm,includeheadfoot]{geometry}
\bigskipamount 6mm

% For table of contents: remove trailing dots
\RequirePackage{tocloft}
\renewcommand{\cftdot}{}
% Add References to TOC
\RequirePackage[nottoc,notlot,notlof]{tocbibind}


% Spacings between (sub)sections:
\RequirePackage{titlesec}
\titlespacing*{\section}{0pt}{1.8\baselineskip}{\baselineskip}


% Unicode characters
\RequirePackage[utf8]{inputenc}

% doi links in references
\RequirePackage{doi}

% Math formulas and symbols
%\RequirePackage{amsmath,amssymb} % Redundant (clashes with mathdesign)
\RequirePackage{amsmath}

% Hyperrefs
\RequirePackage{hyperref}

% Include line numbers in submissions
\RequirePackage{lineno}

% SciPost BiBTeX style
\bibliographystyle{SciPost_bibstyle}

% SciPost header and footer
\RequirePackage{fancyhdr}
\pagestyle{fancy}

\makeatletter
\let\ps@plain\ps@fancy
\makeatother

\RequirePackage{xcolor}
\definecolor{scipostdeepblue}{HTML}{002B49}
\definecolor{scipostblue}{HTML}{0019A2}


\RequirePackage{graphicx}

\RequirePackage{cite}

\RequirePackage[width=.90\textwidth]{caption}

\def \tr{\operatorname{tr}}
\def \Tr{\operatorname{Tr}}
\def \Pf{\operatorname{Pf}}
\def \im{\operatorname{Im}}
\def \re{\operatorname{Re}}


\usepackage{listings}
% the following lines make sure the pdf code is copy-pastable
\usepackage{textcomp}
\usepackage[space=true]{accsupp}
\usepackage{amsthm}

\newtheorem{theorem}{Theorem}
\newtheorem{definition}{Definition}
\newcommand{\pdfactualhex}[3]{\newcommand{#1}{%
		\BeginAccSupp{method=hex,ActualText=#2}#3\EndAccSupp{}}}

\pdfactualhex{\pdfactualdspace}{2020}{\textperiodcentered\textperiodcentered}
\pdfactualhex{\pdfactualsquote}{27}{'}
\pdfactualhex{\pdfactualbtick}{60}{`}

% define colours 
\definecolor{deepblue}{rgb}{0,0,0.8}
\definecolor{deepred}{rgb}{1.0,0,0}
\definecolor{deepgreen}{rgb}{0,0.7,0}
\definecolor{blueviolet}{RGB}{138,43,226}
\definecolor{darkyellow}{RGB}{204,204,0}
\definecolor{codegray}{rgb}{0.6,0.6,0.6}
\definecolor{weborange}{RGB}{255,165,0}
\definecolor{gold}{RGB}{255,205,0}
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codepurple}{rgb}{0.58,0,0.82}

%\definecolor{backcolour}{rgb}{0.0,0.0,0.0}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{sublime}{
	backgroundcolor=\color{backcolour},   
	commentstyle=\color{deepgreen},
	keywordstyle=\color{deepred},
	numberstyle=\tiny,
	stringstyle=\color{weborange},
	basicstyle=\small\ttfamily, %\footnotesize,
	breakatwhitespace=false,         
	breaklines=true,                 
	captionpos=t,                    
	keepspaces=true,                 
	numbers=left,                    
	numbersep=5pt,                  
	showspaces=false,                
	showstringspaces=false,
	showtabs=false,                  
	tabsize=4,
	columns=flexible,
	emptylines=10000,
	literate={'}{\pdfactualsquote}1{`}{\pdfactualbtick}1{\ \ }{\pdfactualdspace}2,
	inputpath=../scripts/,
%	inputpath=anc/,
	keywords={lambda,xrange,abs,for,return},
}
\lstset{style=sublime,language=matlab}

%% Patch lineno when used with amsmath
\newcommand*\patchAmsMathEnvironmentForLineno[1]{%
    \expandafter\let\csname old#1\expandafter\endcsname\csname #1\endcsname
    \expandafter\let\csname oldend#1\expandafter\endcsname\csname end#1\endcsname
    \renewenvironment{#1}%
    {\linenomath\csname old#1\endcsname}%
    {\csname oldend#1\endcsname\endlinenomath}}%
\newcommand*\patchBothAmsMathEnvironmentsForLineno[1]{%
    \patchAmsMathEnvironmentForLineno{#1}%
    \patchAmsMathEnvironmentForLineno{#1*}}%
\AtBeginDocument{%
    \patchBothAmsMathEnvironmentsForLineno{equation}%
    \patchBothAmsMathEnvironmentsForLineno{align}%
    \patchBothAmsMathEnvironmentsForLineno{flalign}%
    \patchBothAmsMathEnvironmentsForLineno{alignat}%
    \patchBothAmsMathEnvironmentsForLineno{gather}%
    \patchBothAmsMathEnvironmentsForLineno{multline}%
}
%% End patch lineno


\ProcessOptions\relax

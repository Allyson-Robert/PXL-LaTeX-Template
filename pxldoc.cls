% Standard Class written for the express purpose of creating PXL house styles articles
% Author: Allyson Robert
% Last Edit: 23/02/2019

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pxldoc}[2019/02/23 A PXL document class]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         Packages         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load base class
\LoadClass[11pt, a4paper]{article}

% Language package
\RequirePackage[dutch]{babel}

% Mathematics
\RequirePackage{mathrsfs}  
\RequirePackage{amsmath, amssymb}
\RequirePackage{relsize}
\RequirePackage[normalem]{ulem}

% Header
\RequirePackage{fancyhdr}
\RequirePackage{titling}

% Aesthetics, layout and font
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{multicol}
\RequirePackage{tocbibind}
\RequirePackage[explicit]{titlesec}
\RequirePackage[T1]{fontenc}
\RequirePackage{helvet}

% Physics-y physics stuff
\RequirePackage{physics}

% Float management
\RequirePackage{graphicx}
\RequirePackage[font={footnotesize,it}]{caption}
\RequirePackage{float}
\RequirePackage{wrapfig}

% Improvements
\RequirePackage{enumitem}
\RequirePackage{chngcntr}

% Misc items
\RequirePackage{lipsum}% Dummy text
\RequirePackage[makeroom]{cancel} % Fancy thing to strike terms
\RequirePackage{listings} % displaying code

% References and links
\RequirePackage[colorlinks=true, linktoc=all]{hyperref}
\RequirePackage[noabbrev]{cleveref}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Definition of things   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Arial font
%\renewcommand{\familydefault}{\sfdefault}

% Edit paragraph settings
\setlength\parindent{0pt} % no indentation
\newcommand{\npar}{\par\medskip} % shorthand for new paragraph
\titlespacing{\paragraph}{0pt}{0pt}{0.5em}[] % space after title

% Edit part settings
\let\stdpart\part
\renewcommand\part{\clearpage\stdpart}

% Mathematical symbols and notation
\newcommand{\half}{\frac{1}{2}}

\newcommand{\avg}[1]{\langle #1 \rangle}
\newcommand{\deriv}[2]{\frac{d#1}{d#2}}
\newcommand{\sderiv}[2]{\frac{d^2 #1}{d {#2}^2}}
\newcommand{\pderiv}[2]{\frac{\partial #1}{\partial #2}}
\newcommand{\psderiv}[2]{\frac{\partial^2 #1}{\partial {#2}^2}}

\renewcommand{\abs}[1]{\vert #1 \vert}
\renewcommand{\eval}{\Big\vert}

\newcommand{\naturals}{\mathbb{N}}
\newcommand{\wholes}{\mathbb{Z}}
\newcommand{\rationals}{\mathbb{Q}}
\renewcommand{\real}{\mathbb{R}}
\newcommand{\complex}{\mathbb{C}}

% Physical symbols and notation
\newcommand{\om}[1]{\cdot 10^{#1}}

% Number paragraphs using the alphabet to match the problem sets
\renewcommand{\theparagraph}{(\thesubsection ~ - \roman{paragraph})}
\setcounter{secnumdepth}{4}
\counterwithin*{paragraph}{subsection}
\crefname{paragraph}{paragraaf}{paragrafen}
\Crefname{paragraph}{Paragraaf}{Paragrafen}

% Make sure the figures are always scaled
\setkeys{Gin}{width=\linewidth}

% Edit appearance of footnotemarks
\renewcommand{\thefootnote}{{\color{blue}\textit{(\arabic{footnote})}}}

% Title in header
\makeatletter
	\def\title#1{\gdef\@title{#1}\gdef\THETITLE{#1}}
\makeatother

% Switch to uppercase
\newcommand{\upperC}[1]{\expandafter\MakeUppercase\expandafter{#1}}

% Defince \course{} element
\newcommand*{\course}[1]{\gdef\thecourse{#1}}
\newcommand*{\thecourse}{Insert \textbackslash course\{\} below \textbackslash date\{\}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Definition of the footer %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define the style of the page
\pagestyle{fancy}
\fancyhf{}

\setlength{\headheight}{40pt} 

% Header definition
\fancyhead[L]{\includegraphics[width = 3.5cm]{PXL_Logo} \\ \theauthor}
\fancyhead[R]{\thecourse \\ \THETITLE \\ \thedate}

% Footer definition
\fancyfoot[R]{Pagina \thepage}

% Resize header\footer rule widths
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{1pt}

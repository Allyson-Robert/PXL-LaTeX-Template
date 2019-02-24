%    Standard LaTeX Document Class written for PXL house styles articles
%    Copyright (C) 2019  Allyson Robert
%
%    This program is free software: you can redistribute it and/or modify
%    it under the terms of the GNU General Public License as published by
%    the Free Software Foundation, either version 3 of the License, or
%    (at your option) any later version.
%
%    This program is distributed in the hope that it will be useful,
%    but WITHOUT ANY WARRANTY; without even the implied warranty of
%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%    GNU General Public License for more details.
%
%    You should have received a copy of the GNU General Public License
%    along with this program. If not, see <https://www.gnu.org/licenses/>.
%
%    Last Edit: 23/02/2019
%    Credit: https://github.com/Allyson-Robert/pxldoc

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
\RequirePackage{mathabx}
\RequirePackage{polynom}

% Header
\RequirePackage{fancyhdr}
\RequirePackage{titling}
\RequirePackage{lastpage}

% Aesthetics, layout and font
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{multicol}
\RequirePackage{tocbibind}
\RequirePackage[explicit]{titlesec}
\RequirePackage[T1]{fontenc}
\RequirePackage{helvet}
\RequirePackage{chngcntr}

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

% File management
\RequirePackage{import}

% Custom Environments
\RequirePackage{thmtools}
\RequirePackage{framed}
\RequirePackage{mdframed}
\RequirePackage{tocloft}

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
\renewcommand{\familydefault}{\sfdefault}

%Table spacing
\newcommand\Tstrut{\rule{0pt}{2.6ex}}         
% = `top' strut                                  
\newcommand\Bstrut{\rule[-0.9ex]{0pt}{0pt}}   
% = `bottom' strut

% Change section numbering
\counterwithin*{section}{part}
\renewcommand\thesection{\arabic{part}.\arabic{section}}

% Color definitions
\newcommand{\CB}{\color{black}}

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
\crefname{equation}{vergelijking}{vergelijkingen}
\Crefname{equation}{Vergelijking}{Vergelijkingen}

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

% Edit cref junction symbol
\newcommand{\crefrangeconjunction}{--}

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Defined Environments   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Colours
\definecolor{TFTitleColor}{RGB}{0, 0, 0}
\definecolor{TFFrameColor}{RGB}{189, 189, 255}
\definecolor{shadecolor}{RGB}{255, 230, 230}
\definecolor{mypink}{RGB}{255, 230, 230}
\definecolor{mydarkpink}{RGB}{255, 133, 133}
\definecolor{mygreen}{RGB}{228, 251, 240}
\definecolor{mydarkgreen}{RGB}{78, 228, 156}

%%%%%%%%%%%%%%%%%%%%%%%
% Example Environment %
\newcounter{example}[section]
\renewcommand{\theexample}{\thesection.\arabic{example}}
\newenvironment{example}[1]{
    \refstepcounter{example}\par
    \begin{titled-frame}{Voorbeeld~\theexample ~#1}
}{
    \end{titled-frame}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%
% Definition Environment %
\newcounter{definition}[section]
\renewcommand{\thedefinition}{\thesection.\arabic{definition}}
\newenvironment{definition}[1]{%
	\refstepcounter{definition}\mdfsetup{%
		frametitle={%
			\uline{\textbf{Definitie~\thedefinition:~#1}}
		}
	}%
	\mdfsetup{ innertopmargin=10pt,linecolor=mydarkpink,%
		linewidth=2pt }
	\begin{mdframed}[backgroundcolor=mypink, nobreak=true]\relax%
        }{
    \end{mdframed}
}
\crefname{definition}{definitie}{definities} 
\Crefname{definition}{Definitie}{Definities}

%%%%%%%%%%%%%%%%%%%%%%%%
% Exercise Environment %
\makeatletter
\newcommand\listofexercisesname{Oefenignenlijst}
\newcommand\listofexercises{
	\phantomsection\addcontentsline{toc}{section}{Oefenignenlijst}
	\section*{\listofexercisesname}
	\@starttoc{exs}
} % Makes a list of all the problems
\makeatother

\newcounter{exercise}[section]
\renewcommand{\theexercise}{\arabic{exercise} (\thesection) }

\newenvironment{exercise}[2][]{
    \refstepcounter{exercise}
    \ifx\\#1\\
    	\addcontentsline{exs}{subsection}{Oefening ~\theexercise ~#2}
    \else
    	\addcontentsline{exs}{subsection}{Oefening ~\theexercise ~#1}
    \fi
   	\begin{leftbar}{\textbf{Oefening~\theexercise ~#2}\npar}\itshape
}{
    \end{leftbar}\npar
}

%%%%%%%%%%%%%%%%%%%%%%%
% Theorem Environment %
\makeatletter
\newcommand\listofthmname{Lijst der stellingen}
\newcommand\listofthm{
	\phantomsection\addcontentsline{toc}{section}{Lijst der stellingen}
	\section*{\listofthmname}
	\@starttoc{thm}
} % Makes a list of all the theorems

% Theorem Environment %
\newcounter{theorem}[section]
\renewcommand{\thetheorem}{\thesection.\arabic{theorem}}

\newenvironment{theorem}[2][]{%
	\refstepcounter{theorem}\mdfsetup{%
		frametitle={%
			\textbf{\textit{\uline{Eigenschap~\thetheorem:~#1}}}
		}
	}%
	\mdfsetup{ innertopmargin=10pt,linecolor=mydarkgreen,%
		linewidth=2pt }
	\begin{mdframed}[backgroundcolor=mygreen, nobreak=true]\relax%
		\label{th:#2}
	}{
	\end{mdframed}
}

\crefname{theorem}{theorem}{theorems}
\Crefname{theorem}{Theorem}{Theorems}
% Proof environment %
\newcommand{\bref}[1]{
	\hypersetup{linkcolor=black}%
	\ref{#1}%
	\hypersetup{linkcolor=red}
}
\newenvironment{proof}[1]{
	\mdfsetup{%
		frametitle={%
			\textbf{\textit{\uline{Proof of theorem\bref{th:#1}}}}
		}
	}%
	\mdfsetup{innertopmargin=10pt,linecolor=mydarkgreen,%
		linewidth=2pt }
	\begin{mdframed}\relax%
	}{
	\end{mdframed}
} 

% Enumulti enviroment
\newenvironment{enumulti}[1]{
	\begin{multicols}{#1}
		\begin{enumerate}
}{
		\end{enumerate}
	\end{multicols}
}

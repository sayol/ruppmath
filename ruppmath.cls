%todo: Master's Degree of Science in Mathematics Thesis Templates
%writer: KHTUG,
%website: https://khtug.blogspot.com/
%email: khmertug@gmail.com
%note: This is an unofficial template.
\ProvidesClass{ruppmath}[2018/10/03]
\LoadClass{report}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{xcolor}
\RequirePackage{tikz}
\RequirePackage{tkz-euclide}
\RequirePackage{tkz-tab}
\RequirePackage{enumitem}
\RequirePackage{multicol}
\RequirePackage{tasks}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{newpxtext}
\RequirePackage{newpxmath}
\RequirePackage{fontawesome}
\RequirePackage{pifont}
\RequirePackage{microtype}
\RequirePackage{hyperref}
\hypersetup{%
	colorlinks=true,%
	linkcolor=blue,%
	urlcolor=blue,%
	citecolor=blue,%
	pdfborder={0 0 0}%
}
% page margin
\geometry{margin=3cm}
% theorem like environments
\theoremstyle{plain}
\newtheorem{theorem}{Theorem}
\newtheorem{lemma}{Lemma}
\newtheorem{corollary}{Corollary}
\newtheorem*{conjecture}{Conjecture}
\theoremstyle{definition}
\newtheorem{definition}{Definition}
\newtheorem{example}{Example}
\newtheorem{exercise}{Exercise}
\theoremstyle{remark}
\newtheorem*{remark}{Remark}
\newenvironment{sketchofproof}{%
	\begin{proof}[Sketch of Proof]%
		}{%
	\end{proof}}
% re-define chapter
\def\@makechapterhead#1{%
	{\parindent \z@ \raggedright \normalfont
		\ifnum \c@secnumdepth >\m@ne
		\huge\bfseries \@chapapp\space \thechapter
		\par\nobreak
		\vskip 20\p@
		\fi
		\interlinepenalty\@M
		\Huge \bfseries #1\par\nobreak
		\vskip \baselineskip
}}
\def\@makeschapterhead#1{%
	{\parindent \z@ \raggedright
		\normalfont
		\interlinepenalty\@M
		\Huge \bfseries  #1\par\nobreak
		\vskip \baselineskip
}}
% re-define section
\renewcommand\section{\@startsection {section}{1}{\z@}%
	{2ex \@plus .25ex \@minus .25ex}%
	{2ex \@plus .25ex \@minus .25ex}%
	{\sffamily\Large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
	{2ex \@plus .25ex \@minus .25ex}%
	{2ex \@plus .25ex \@minus .25ex}%
	{\sffamily\large\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
	{2ex \@plus .25ex \@minus .25ex}%
	{2ex \@plus .25ex \@minus .25ex}%
	{\sffamily\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
	{2ex \@plus .25ex \@minus .25ex}%
	{-1em}%
	{\sffamily\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
	{2ex \@plus .25ex \@minus .25ex}%
	{-1em}%
	{\sffamily\normalsize\bfseries}}
\def\bibname{References}
\raggedbottom
% thesis title
\renewcommand\title[1]{%
	\def\@title{#1}
	\def\thesistitle{#1}}
% submitted date
\renewcommand\date[1]{%
	\def\@date{#1}
	\def\submitdate{#1}}
% candidate name
\def\candidateprefix{}
\def\candidatefirstname{}
\def\candidatemiddlename{}
\def\candidatelastname{}
\newcommand\candidatename[4][Mr.]{%
	\def\@author{#2~#4}
	\def\candidateprefix{#1}
	\def\candidatefirstname{#2}
	\def\candidatemiddlename{#3}
	\def\candidatelastname{#4}}
% advisor name
\def\advisorprefix{}
\def\advisorfirstname{}
\def\advisormiddlename{}
\def\advisorlastname{}
\newcommand\advisorname[4][Mr.]{%
	\def\advisorprefix{#1}
	\def\advisorfirstname{#2}
	\def\advisormiddlename{#3}
	\def\advisorlastname{#4}}
% reader name
\def\readerprefix{}
\def\readerfirstname{}
\def\readermiddlename{}
\def\readerlastname{}
\newcommand\readername[4][Mr.]{%
	\def\readerprefix{#1}
	\def\readerfirstname{#2}
	\def\readermiddlename{#3}
	\def\readerlastname{#4}}
% head of department name
\def\headprefix{}
\def\headfirstname{}
\def\headmiddlename{}
\def\headlastname{}
\newcommand\headname[4][Mr.]{%
	\def\headprefix{#1}
	\def\headfirstname{#2}
	\def\headmiddlename{#3}
	\def\headlastname{#4}}
% candidate name
\def\deanprefix{}
\def\deanfirstname{}
\def\deanmiddlename{}
\def\deanlastname{}
\newcommand\deanname[4][Mr.]{%
	\def\deanprefix{#1}
	\def\deanfirstname{#2}
	\def\deanmiddlename{#3}
	\def\deanlastname{#4}}
\renewcommand\maketitle{%
\begin{titlepage}
	\makeatletter
	\centering\Large\scshape
	\includegraphics[width=2.5cm,height=2.5cm]{rupplogo}\\[0.25cm]
	Royal University of Phnom Penh\\[2cm]
	{\huge\bfseries\thesistitle}\\[2cm]
	by\\
	\candidatefirstname~\candidatelastname\\[2cm]
	A master's thesis submitted to the\\
	Department of Mathematics\\
	College of Science\\
	Royal University of Phnom Penh\\[1cm]
	As partial fulfillment of the\\
	requirements for the degree of\\
	Master of Science in Mathematics\\[2cm]
	{\normalfont\large\submitdate}
	\makeatother
\end{titlepage}
\begin{titlepage}
	\makeatletter
	\begin{center}
		\large \bfseries Royal University of Phnom Penh\\[1cm]
	\end{center}
	\noindent
	This to certify that this Master's Thesis entitled {\bfseries ``\thesistitle,''} prepared and submitted by {\bfseries \candidatefirstname~\candidatelastname} to fulfill part of the requirements for the degree of {\bfseries Master of Science in Mathematics,} was successfully defended and approved on {\bfseries \submitdate.}\\[2cm]
	\begin{center}
		{\scshape\advisorprefix~\advisorfirstname~\advisorlastname}\\
		Thesis Advisor\\[2cm]
		{\scshape \readerprefix~\readerfirstname~\readerlastname}\\
		Thesis Reader\\[1cm]
	\end{center}
	The Department of Mathematics endorses the acceptance of this Master's Thesis as partial fulfillment of the requirements for the degree of Master of Science in Mathematics.\\[2cm]
	\begin{center}
		{\scshape \headprefix~\headfirstname~\headlastname}\\
		Head of Department of Mathematics\\[1cm]
	\end{center}
	This Master's Thesis is hereby officially accepted as partial fulfillment of the requirement for the degree of Master of Science in Mathematics.\\[2cm]
	\begin{center}
		{\scshape \deanprefix~\deanfirstname~\deanlastname}\\
		Dean, College of Science
	\end{center}
	\makeatother
\end{titlepage}}
\endinput
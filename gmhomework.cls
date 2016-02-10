%GMHomework.cls is a LaTeX document class for formatting homework.
%2016-02-01 Grant Moyer <grantmoyer@gmail.com>

\ProvidesClass{gmhomework}[2016/02/01 version 0.1 GMHomework]
\NeedsTeXFormat{LaTeX2e}

%Pass options to article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax

%Use article class
\LoadClass{article}

%Set margins
\RequirePackage[left=1in,right=1in,top=1in,bottom=1in]{geometry}

%define course
\def\@course{}
\newcommand{\course}[1]{\def\@course{#1}}

%define assignment
\def\@assignment{}
\newcommand{\assignment}[1]{\def\@assignment{#1}}

%define date
\def\@date{\today}

%Set headers and footers
\RequirePackage{fancyhdr}
\RequirePackage{datetime2}
\fancypagestyle{gmhomework}{
	\fancyhf{} %clear fields
	\fancyhead[LE,LO]{\@author}
	\fancyhead[CE,CO]{ % hyphen only if both course and assignment present
		\if\relax\@course\relax
			\if\relax\@assignment\relax
			\else
				\@assignment
			\fi
		\else
			\if\relax\@assignment\relax
				\@course
			\else
				\@course\ ---\ \@assignment
			\fi
		\fi
	}
	\fancyhead[RE,RO]{\@date}
	\fancyfoot[CE,CO]{\thepage}
	\renewcommand{\headrulewidth}{1pt}
	\renewcommand{\footrulewidth}{1pt}
}
\pagestyle{gmhomework}


%Set up problem commands
\RequirePackage{enumitem}
\newenvironment{problem}[1]{
	\noindent
	\textbf{\Large Problem #1}\vspace{\topsep}\nobreak\@afterheading\
	\begin{description}[leftmargin=*,labelindent=\parindent]
}{
	\end{description}
	\vspace{5ex}
}

\renewcommand{\part}[1]{
	\item[#1]
}

\newcommand{\solution}{
	\item[Solution] \hfill \\*
}

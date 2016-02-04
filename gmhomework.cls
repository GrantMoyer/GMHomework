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
\newcommand{\date}[1]{\def\@date{#1}}

%Set headers and footers
\RequirePackage{fancyhdr}
\RequirePackage{datetime2}
\fancypagestyle{gmhomework}{
	\fancyhf{} %clear fields
	\fancyhead[LE,LO]{\@author}
	\fancyhead[CE,CO]{\@course - \@assignment}
	\fancyhead[RE,RO]{\@date}
	\renewcommand{\headrulewidth}{1pt}
	\renewcommand{\footrulewidth}{1pt}
}
\pagestyle{gmhomework}

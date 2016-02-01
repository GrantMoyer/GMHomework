%homework.cls is a LaTeX document class for formatting homework.
%2016-02-01 Grant Moyer <grantmoyer@gmail.com>

\ProvidesClass{homework}[2016-02-01 Homework]
\NeedsTeXFormat{LaTeX2e}

%Pass options to article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax

%Use article class
\LoadClass{article}

%Set margins
\RequirePackage[left=1in, right=1in, top=1in, bottom=1in]{geometry}

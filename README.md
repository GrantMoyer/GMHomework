GMHomework
========

GMHomework is a document class for LaTeX that can be used for homework assignments. The file that contains the document class is gmhomework.cls. gmhomework.tex is an example file.


Usage
-----

To use this document class with a latex file, put gmhomework.cls in the same directory as the latex source file, and specify `\documentclass{gmhomework}` at the top of the document.

Use the `\author{}` command, which takes the author's name as an argument to have the author's name rendered at the left of the header. The `\course{}` and `\assignment{}` commands take the course's and assignment's names as arguments respectively, and will cause the course name to be rendered along with the assignment name, separated by a long dash, at the center of the header. If any of these commands are omitted, there respective information will not be rendered.

The `\data{}` command takes a date as its argument, and causes the date to be rendered at the right of the header. If the date command is omitted, the current date is used in YYYY-MM-DD format.

The class provides a `problem` environment which takes one argument, the problem name. Inside the problem environment, the `\part{}` and `\solution{}` commands can be used to specify sections of the problem. The part command takes one argument, the part name, but if the part name is omitted, the part will be rendered without a name.

The example code:

```TeX
\documentclass{gmhomework}

\author{Grant Moyer}
\course{GitHub}
\assignment{Example}
\date{2016-02-09}

\begin{document}
	%Simple problem example
	\begin{problem}{0}
		\part{} This is the first problem
		\solution This is the solution to the first problem
	\end{problem}

	%Multi-part problem example
	\begin{problem}{1}
		\part{a.} This is part a.
		\solution This is the solution to part a.

		\part{b.} This is part b.
		\solution This is the solution to part b.
	\end{problem}

	%Multi-part problem example with common part and different grouping
	\begin{problem}{A}
		\part{} Assume $x = y$.

		\part{1.)} if $y = 2$, find $x$.
		\part{b} if $x = -3$, find $y$.
		\part{(z)} Given:
			\begin{equation}
				x = \sum_{n=0}^{\infty}{\left(\frac{1}{2}\right)^n}
			\end{equation}
		find $y$.

		\solution
		\part{1.)} $x = 2$.
		\part{b} $y = -3$.
		\part{(z)}
			\begin{equation}
				y = x = \sum_{n=0}^{\infty} \left(\frac{1} {2}\right)^n
				  = \frac {1} {1 - \frac{1} {2}} = 2
			\end{equation}
	\end{problem}
\end{document}
```

Renders to this:

![Example output](/gmhomework.png)


License
-------

GMHomework is distributed under a modified BSD license that allows the distribution of binaries (rendered douments) without supplying the license. For more information, see 'LICENSE.txt'.

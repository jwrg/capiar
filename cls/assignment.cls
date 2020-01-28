%
% Assignment-writing class file
%
% For use when writing assignments for school
%
% Includes:
%
% linguistics.sty
% capiar_font.sty
% capiar_colour.sty (for now)
%

\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{assignment}[2019/11/03 Capiar Assignment class]

% Class options
\DeclareOption{roman}{
  \newcommand{\numstyle}{\roman}
}
\DeclareOption{arabic}{
  \newcommand{\numstyle}{\arabic}
}
% Default option
\ExecuteOptions{arabic}
\ProcessOptions\relax

% Heavy lifting
\LoadClass[10pt]{article}

% Include macros
\RequirePackage{
  capiar_preamble,
  linguistics,
}

% Fonts
\RequirePackage{capiar_font}

% Colours
\RequirePackage{capiar_colour}

%\RequirePackage{maths}
%\input{res/macro/langtab}
%\input{res/macro/asstab}

% Layout
\RequirePackage{
  enumitem,     % fancy enumerators
  geometry,     % adjust margins, portrait layout
}

\geometry{
  letterpaper,		% paper size
  margin=1.25in,	% specified independently with hmargin vmargin
}	

% Overrides
\renewcommand{\arraystretch}{1.5}
\setlength{\tabcolsep}{12pt}
  \setlist[enumerate,1]{leftmargin=0pt,align=right,labelindent=0pt,labelwidth=\parindent,labelsep=16pt,itemindent=1ex,label=\numstyle*.}
  \setlist[enumerate,2]{leftmargin=0pt,align=right,labelindent=6pt,labelwidth=\parindent,labelsep=6pt,itemindent=1ex,label=\numstyle*.}
\DeclareTextCompositeCommand{\=}{T1}{i}{\=\i}

% Commands
\newcommand\titletable[6]{
  \addcontentsline{toc}{section}{#3}
  \begin{center}
    \renewcommand{\arraystretch}{1.0}
    \setlength{\tabcolsep}{4pt}
    \begin{tabu}to \linewidth {X[l]X[1.4,c]X[r]}

      #1 &	{\huge #3 }	&	#5 \tabularnewline
      #2 &	{\small #4 }&	#6 \tabularnewline

    \end{tabu}
  \end{center}
  \vspace{2em}
}

\endinput

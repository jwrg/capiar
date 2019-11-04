%
% Reference sheet class file
% 
% For use when authoring short reference
% materials like cheat sheets, formulae
% sheets, and some simple diagrams.
%

\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{reference}[2019/11/03 Capiar Reference class]

% Heavy lifting
\LoadClass[10pt]{article}

% Includes
\RequirePackage{
  capiar_preamble,
}

% Fonts
\RequirePackage{capiar_font}

% Layout
\RequirePackage{
  geometry,     % adjust margins, orientation
}

\geometry{
  letterpaper,    % paper size
  margin=1.25in,  % manually set page margins
}

% Commands
\newcommand{\titletable}[2]{
  \begin{center}
    {\huge #1} \\
    {\small #2} \\
  \end{center}
}

\newcommand{\refentry}[2]{
  \makebox[\linewidth]{
    \noindent\begin{minipage}[c][][c]{0.46\linewidth}
      \raggedright
      \texttt{ #1 }
    \end{minipage}
    \dotfill
    \begin{minipage}[c][][c]{0.53\hsize}
      \raggedleft
      { #2 }
    \end{minipage}
  }

  \vspace{1ex}
}

\endinput

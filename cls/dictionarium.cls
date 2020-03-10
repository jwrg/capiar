%
% Dictionary and linguistic-related class file
%
% Provides packages and commands for authoring dictionaries and
% other such language-related resource files
%
% Includes:
%
% dictionarium.sty
% capiar_font.sty
% capiar_colour.sty (for now)
%

\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{dictionarium}[2019/11/03 Capiar Dictionarium class]

% Heavy lifting
\LoadClass[twoside,9pt]{article}

% Includes 
\RequirePackage{
  capiar_preamble,
  dictionarium,
}

% Fonts
\RequirePackage{capiar_font}

% Colours
\RequirePackage{capiar_colour}

% Layout
\RequirePackage
{
  geometry,     % book margins, standard book page size
}

\geometry{
  top=0.5in,      % top margin
  bottom=0.75in,   % bottom margin
  inner=0.75in,   % inner margin (binding side)
  outer=0.5in,    % outer margin (cut side)
  paperwidth=6in,
  paperheight=9in,
}	

% Overrides
\renewcommand{\arraystretch}{1.5}
\setlength{\tabcolsep}{12pt}
\DeclareTextCompositeCommand{\=}{T1}{i}{\=\i}

\endinput

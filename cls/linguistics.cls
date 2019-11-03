%
% Dictionary and linguistic-related class file
%
% Provides packages and commands for authoring dictionaries and
% other such language-related resource files
%
% Includes:
%
% linguistics.sty
% capiar_font.sty
% capiar_colour.sty (for now)
%

\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{linguistics}[2019/11/03 Capiar Linguistics class]

% Heavy lifting
\LoadClass[10pt]{article}

% Includes 
\RequirePackage{
  preamble,
  linguistics,
}

% Fonts
\RequirePackage{capiar_font}

% Colours
\RequirePackage{capiar_colour}

% Layout
\RequirePackage{
  geometry,     % adjust margins, portrait layout
}

\geometry{
  letterpaper,		% paper size
  margin=1.25in,	% specified independently with hmargin vmargin
}	

% Overrides
\renewcommand{\arraystretch}{1.5}
\setlength{\tabcolsep}{12pt}
\DeclareTextCompositeCommand{\=}{T1}{i}{\=\i}

\endinput

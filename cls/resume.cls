%
% Resume-writing class file
%
% Provides packages and commands for authoring resumes
%
% Includes:
%
% resume.sty
% capiar_font.sty
% capiar_colour.sty
%

\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{resume}[2019/11/03 Capiar Resume class]

% Heavy lifting
\LoadClass[10pt]{article}

% Includes 
\RequirePackage{
  capiar_preamble,
  resume,
}

% Fonts
\RequirePackage{capiar_font}

% Colours
\RequirePackage{capiar_colour}

% Layout
\RequirePackage{
  geometry,     % adjust margins, portrait layout
}

\geometry{				% specify page size options for (geometry)
	letterpaper,		% paper size
	margin=2cm,			% specified independently with hmargin vmargin
}	

% Overrides
\linespread{1.1}
\renewcommand{\arraystretch}{1.3}

\endinput

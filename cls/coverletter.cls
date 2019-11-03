%
% Cover letter-writing class file
%
% For use when writing cover letters for jeorb applications
%
% Includes:
%
% coverletter.sty
% capiar_font.sty
% capiar_colour.sty
%

\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{coverletter}[2019/11/03 Capiar Cover letter class]

% Heavy lifting
\LoadClass[10pt]{memoir}

% Includes 
\RequirePackage{
  preamble,
  coverletter,
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
\setlength{\parindent}{0pt}
\setlength{\parskip}{10pt}
\linespread{1.1}

\endinput

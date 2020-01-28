# Capiar

**Some classes, packages, and macros for LaTeX documents**

I got tired of having the same preamble for large swaths of documents, so I cobbled
together the packages which were common to certain kinds of documents, and the macros
used by said documents, and tried to organize these in a somewhat sane fashion.  Whether
I have succeeded is another story.

## Usage

Installation is done manually as per your LaTeX
configuration.  Copy any .cls or .sty files produced
by running LaTeX on the .dtx files to your local
tex package folder, likely ~/texmf/tex/latex/
```Shell
# To get the .pdf documentation, .ins file and .cls/.sty
# files all in one shot, run pdflatex on the .dtx file(s)
git clone https://github.com/jwrg/capiar.git
cd capiar/sty
pdflatex *.dtx
cd ../cls
pdflatex *.dtx

# Then copy as needed
cd ..
cp cls/*.cls ~/texmf/tex/latex/base/
mkdir ~/texmf/tex/latex/capiar
cp sty/*.sty ~/texmf/tex/latex/capiar/

# Probably need to update the index
texhash
```

Conversion to literate-style programming in .dtx
format is currently complete for user-facing
macro packages, and is underway for internal
macro packages and user-facing classes.

### LaTeX Classes

Capiar provides the following LaTeX classes:

- cls/__assignment.cls__
- cls/__coverletter.cls__
- cls/__linguistics.cls__
- cls/__reference.cls__
- cls/__resume.cls__

### LaTeX Packages

Capiar provides the following LaTeX packages:

- sty/__ceystroke.dtx__ (Keystroke-imitating "font")
- sty/__coverletter.dtx__ (Useful commands for cover letters)
- sty/__inscription.dtx__ (Formats text like inscriptions)
- sty/__linguistics.dtx__ (Tables for declining/conjugating)
- sty/__resume.dtx__ (Tables and commands for resumes)

Also included are some Capiar-specific packages, for
which limited documentation is provided:

- sty/__capiar\_preamble.dtx__
- sty/__capiar\_font.dtx__
- sty/__capiar\_colour.dtx__

When writing your preamble, use one of the above classes
and/or one or more packages.

```LaTeX
\documentclass{linguistics}
\usepackage{ceystroke}
\usepackage{inscription}
% ...
```

## Examples

Included in the `examples/` folder are some illustrative documents highlighting some use
cases.  The examples currently present are
- examples/assignment/__ass14.tex__ (A school-type assignment)
- examples/cheat/__linux\_cheat.tex__ (A rudimentary linux cheat-sheet)
- examples/cheat/__vim\_cheat.tex__ (A non-exhaustive vim cheat-sheet)
- examples/coverletter/__coverletter.tex__ (A cover letter)
- examples/dictionary/__dictionary.tex__ (A Latin-English dictionary)
- examples/resume/__resume.tex__ (A technical resume)

These are subject to frequent change, especially the dictionary, which will be
edited often.

Macros are (poorly) documented in the resource files in which they appear.  The examples
may be a better way to illustrate their usage.

## Roadmap

In the future, the following will be added:

- Better documentation (literate style codebase)
- More use cases: mind maps (simplifying Ti_k_Z), keyboard diagrams
- More examples: formula sheet, correspondence letter

It is also likely that once it gets too unwieldy, or once it needs
release control, the dictionary will be moved to its own repository.

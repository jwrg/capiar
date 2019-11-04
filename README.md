# Capiar

**Some classes, packages, and macros for LaTeX documents**

I got tired of having the same preamble for large swaths of documents, so I cobbled
together the packages which were common to certain kinds of documents, and the macros
used by said documents, and tried to organize these in a somewhat sane fashion.  Whether
I have succeeded is another story.

## Usage

Installation is done manually for now.  Either an install
script or conversion to literate-style programming with the
associated install drivers is forthcoming.

Worst case Ontario:
```shell
$ git clone https://github.com/jwrg/capiar.git
$ cp capiar/{cls,sty}/* ~/texmf/tex/latex/
```

### LaTeX Classes

Capiar provides the following LaTeX classes:

- cls/__assignment.cls__
- cls/__coverletter.cls__
- cls/__linguistics.cls__
- cls/__reference.cls__
- cls/__resume.cls__

### LaTeX Packages

Capiar provides the following LaTeX packages:

- sty/__ceystroke.sty__ (Keystroke-imitating "font")
- sty/__coverletter.sty__ (Useful commands for cover letters)
- sty/__inscription.sty__ (Formats text like inscriptions)
- sty/__linguistics.sty__ (Tables for declining/conjugating)
- sty/__resume.sty__ (Tables and commands for resumes)

Also included are some Capiar-specific packages:

- sty/__capiar\_preamble.sty__
- sty/__capiar\_font.sty__
- sty/__capiar\_colour.sty__

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
- examples/cheat/__vim\_cheat.tex__ (A non-exhausitve vim cheat-sheet)
- examples/coverletter/__coverletter.tex__ (A cover letter)
- examples/dictionary/__dictionary.tex__ (A Latin dictionary)
- examples/resume/__resume.tex__ (A technical resume)

These are subject to frequent change, especially the dictionary, which will be
edited often.

Macros are (poorly) documented in the resource files in which they appear.  The examples
may be a better way to illustrate their usage.

## Roadmap

In the future, the following will be added:

- Better documentation (potentially literate style codebase)
- More use cases: mind maps (simplifying TiKZ), keyboard diagrams
- More examples: formula sheet, correspondence letter

It is also likely that once it gets too unwieldy, or once it needs
release control, the dictionary will be moved to its own repository.

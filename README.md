# Capiar

**Header files and macros for LaTeX documents**

I got tired of having the same preamble for large swaths of documents, so I cobbled
together the packages which were common to certain kinds of documents, and the macros
used by said documents, and tried to organize these in a somewhat sane fashion.  Whether
I have succeeded is another story.

## Usage

Once the `res/` folder is local on your machine, in your document directory, symlink or
copy the `res/` folder.

When writing your preamble, after your documentclass, include one or more header files:

```LaTeX
\documentclass[10pt]{article}
\input{res/head}
\input{res/letterhead}
```

For all documents, include the most basic useful set of packages:

- res/__head.tex__ (General header file for use in all docs)

The other header files are each tailored to one or several related use cases:

- res/__asshead.tex__ (Assignment-writing header file)
- res/__langhead.tex__ (Language-related documents)
- res/__letterhead.tex__ (Letters and cover letters)
- res/__refhead.tex__ (Cheat/formula sheets)
- res/__resumehead.tex__ (CV/resumes)

The header files are the only files which need be included in your preamble.  The header
files have some crossover, and in general you should only need one in addition to 
`res/head.tex`.  The resource files located in the `res/macro` and `res/style` folders 
need not be included as they are the domain of the header files.  Not heeding this 
warning can/will create circulars.

Included in the `examples/` folder are some illustrative documents highlighting some use
cases.  The examples currently present are
- examples/assignment/__ass14.tex__ (A school-type assignment)
- examples/cheat/__linux_cheat.tex__ (A rudimentary linux cheat-sheet)
- examples/cletter/__cover_letter.tex__ (A cover letter)
- examples/dictionary/__dictionary.tex__ (A Latin dictionary)
- examples/resume/__resume.tex__ (A technical resume)

These are subject to frequent change, especially the dictionary, which will be
edited often.

Macros are (poorly) documented in the resource files in which they appear.  The examples
may be a better way to illustrate their usage.

# Roadmap

In the future, the following will be added:

- More use cases: mind maps (simplifying TiKZ), keyboard diagrams
- More examples: formula sheet, correspondence letter

It is also likely that once it gets too unwieldy, or once it needs
release control, the dictionary will be moved to its own repository.

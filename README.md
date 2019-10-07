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

Each header file is tailored to a use case:

- head.tex (General header file for use in all docs)
- asshead.tex (Assignment-writing header file)
- langhead.tex (Language-related documents)
- letterhead.tex (Letters and cover letters)
- resumehead.tex (CV/resumes)

The header files are the only files which need be included in your preamble.  The header
files have some crossover, so don't include more than you need.  The resource files
located in the `res/macro` and `res/style` folders need not be included as they are the
domain of the header files.  Not heeding this warning will create circulars.

Included in the `examples/` folder are some illustrative documents highlighting some use
cases.  These are subject to frequent change, especially the dictionary, which will be
edited often.

Macros are (poorly) documented in the resource files in which they appear.  The examples
may be a better way to illustrate their usage.

# A Clean LaTeX CV Template

A minimal, single-column LaTeX CV template with a consistent
full-width layout: every section (education, experience, projects,
publications, skills, references) spans the full text width, with
dates and locations aligned to the right edge of the same line —
no wasted margins, no mismatched columns.

**GitHub:** https://github.com/tahahb79


## Preview

Built with `resume.cls` — a from-scratch LaTeX class (not a fork of
any existing template) using Palatino, FontAwesome icons, and a
simple blue accent color.

## Files

| File               | Purpose                                                        |
|--------------------|------------------------------------------------------------------|
| `cv-template.tex`  | Placeholder resume showing every command in use — copy this and fill in your own details |
| `resume.cls`       | The class defining fonts, colors, and layout commands            |

`resume.cls` must stay in the same folder as your `.tex` file.

> **Note:** `cv-template.tex` uses placeholder data on purpose. Keep
> your own filled-in resume (with your real contact details and
> references) in a private location — don't commit personal
> information (especially other people's email addresses, e.g. for
> references) to a public repository without their consent.

## Usage

### On Overleaf
1. Create a new blank project.
2. Upload `cv-template.tex` (rename it to `cv.tex` or whatever you
   like) and `resume.cls` into the project root (same folder).
3. Set your `.tex` file as the main file (Overleaf usually detects
   this automatically).
4. Compile with **pdfLaTeX**.

### Locally
```bash
pdflatex cv.tex
```
Requires a standard TeX Live / MiKTeX installation with the
`fontawesome`, `fancyhdr`, `hyperref`, `xcolor`, `etoolbox`,
`palatino`, and `lastpage` packages (all included in most TeX
distributions by default).

## Available Commands

| Command | Description |
|---|---|
| `\name{...}` | Your name, centered at the top |
| `\personalinfo{city}{country}{postcode}{email}{phone}` | Contact line under your name |
| `\cvsection{Title}` | A section heading with an underline rule |
| `\cveventfull{date}{title}{organization}{location}` | An entry with a date/org header (education, jobs) |
| `\cvitemfull{text}` | A full-width bullet point |
| `\cvsubitemfull{text}` | An indented sub-bullet, still full width |
| `\cvrefereefull{name}{title}{department/institution}{email}{phone}{url}` | A reference entry |

## Customization

- **Font size**: change `11pt` in the `\LoadClass[11pt]{article}` line in `resume.cls`.
- **Accent color**: change the `accentblue` color definition near the top of `resume.cls`.
- **Margins**: adjust the `geometry` package options in `cv.tex`.

## License

This project is licensed under the [MIT License](LICENSE).

Copyright (c) 2026 Ali Habibi

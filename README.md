# Tim Li — Résumé

[![Build & publish resume](../../actions/workflows/build.yml/badge.svg)](../../actions/workflows/build.yml)

LaTeX source of my résumé, built on the [Awesome-CV](https://github.com/posquit0/Awesome-CV) template.

**Live:** https://tingggggg.github.io/resume/ · **PDF:** https://tingggggg.github.io/resume/resume.pdf

## Layout

| Path | What |
|---|---|
| `resume.tex` | Entry point: header (name/contact), colors, section order |
| `resume/*.tex` | One file per section — edit content here |
| `awesome-cv.cls`, `fonts/` | Template class and fonts (vendored, rarely touched) |
| `site/index.html` | GitHub Pages landing page that embeds the PDF |
| `.github/workflows/build.yml` | CI: compiles with XeLaTeX and deploys to Pages |

## Updating

1. Edit a file in `resume/` (or add a section and `\input` it in `resume.tex`).
2. Commit and push to `main`. GitHub Actions rebuilds the PDF and redeploys the site (~2 min).
3. Pull requests are built too, so you can preview the PDF (download the `resume-pdf` artifact) before merging.

Tag snapshots you sent to employers, e.g. `git tag 2026-10-acme && git push --tags`, to keep a history of versions.

## Building locally (optional)

```bash
sudo apt install texlive-xetex texlive-fonts-extra latexmk
make
```

Or open the repo in [Overleaf](https://www.overleaf.com) with the XeLaTeX compiler.

## License

Template: Awesome-CV by Claud D. Park — class under LPPL 1.3c, template under CC BY-SA 4.0.
Résumé content © Tim Li.

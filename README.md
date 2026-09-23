# Portfolio site

A static, text-first personal portfolio. Plain HTML and CSS, no build step, no JavaScript, hosted on GitHub Pages.

## Preview locally

From the repo root:

```bash
python3 -m http.server
```

Then open `http://localhost:8000` in a browser. Every page works with JavaScript disabled.

## Add a new project

1. Copy `projects/project-template.html` to a new file, e.g. `projects/my-project.html`.
2. Fill in every `[bracketed placeholder]` in that file: title, dates, the problem/what-I-made/where-it-is summary, requirements table, design section, architecture diagram, technical decision table, and the two closing sections.
3. Add a real screenshot or diagram in place of the two `.figure-placeholder` divs in the Design section, with real `alt` text.
4. Add a card for it on `index.html` in the `#projects` section (copy one `<article class="project-card">` block, update the title, outcome, meta line and the link's `href`).
5. Wire up the Previous/Next links at the bottom of the page (`.project-nav`), and update the two neighboring project pages' links so the sequence stays correct: the project that used to be last needs a "Next" link added, and your new project needs both a "Previous" (pointing at it) and, unless it's now last, a "Next".

## Turn on GitHub Pages

Settings → Pages → Source: **Deploy from a branch** → Branch: **main**, folder **/ (root)** → Save.

The site works both at `username.github.io/repo-name/` and on a custom domain, since every link in the site is relative.

## Placeholders to replace before launch

- Every `[bracketed]` string across `index.html`, `process.html`, `about.html`, `contact.html`, `404.html` and `projects/project-template.html` — name, positioning statement, stats, project details, principles, contact info, dates.
- The Google Fonts `<link>` in every page's `<head>` loads Public Sans from `fonts.googleapis.com`. Self-host the font files in `assets/fonts/` instead if you'd rather not depend on Google Fonts at runtime.
- `resume.pdf` and the "Updated [Month Year]" text in every footer should be kept current as you update the site.

## Structure

```
index.html                       Home: hero, projects, how I work, templates
process.html                     How I build things, stage by stage
about.html                       Bio, principles, what I'm looking for
contact.html                     Email, LinkedIn, GitHub, resume, location
404.html                         Not-found page (served automatically by GitHub Pages)
projects/project-template.html   Case study template: PRD, design, TDD, build, retro
assets/css/site.css              The one stylesheet, built on tokens.json's custom properties
assets/img/                      Images, including og-image.png (social preview)
docs/                            PRD and technical design doc templates (Markdown)
resume.pdf                       Resume PDF
.nojekyll                        Tells GitHub Pages not to run Jekyll on this repo
```

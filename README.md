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
3. Add the project's real PDFs to `docs/` (e.g. `docs/my-project-prd.pdf`, `docs/my-project-tdd.pdf`) and update the `href`s in the new page's link row and requirements/technical-design captions to point at them.
4. Add a real screenshot or diagram in place of the two `.figure-placeholder` divs in the Design section, with real `alt` text.
5. Add a card for it on `index.html` in the `#work` section (copy one `<article class="project-card">` block, update the title, outcome, meta line and the link's `href`).
6. If you now have more than one project, update the "Next project" link at the bottom of each project page to point at the next one in sequence.

## Turn on GitHub Pages

Settings → Pages → Source: **Deploy from a branch** → Branch: **main**, folder **/ (root)** → Save.

The site works both at `username.github.io/repo-name/` and on a custom domain, since every link in the site is relative.

## Placeholders to replace before launch

- Every `[bracketed]` string across `index.html`, `process.html`, `about.html`, `contact.html`, `404.html` and `projects/project-template.html` — name, positioning statement, stats, project details, principles, contact info, dates.
- `resume.pdf` — currently a tiny placeholder PDF. Replace with your real resume.
- `docs/example-prd.pdf` and `docs/example-tdd.pdf` — placeholder PDFs. Replace with real documents (or per-project files; see "Add a new project" above).
- `assets/img/og-image.png` — referenced by every page's Open Graph tag for LinkedIn/social previews, but the file doesn't exist yet. Add one (1200×630px is the usual size).
- The Google Fonts `<link>` in every page's `<head>` loads Public Sans from `fonts.googleapis.com`. Self-host the font files in `assets/fonts/` instead if you'd rather not depend on Google Fonts at runtime.
- All `https://github.com/`, `https://www.linkedin.com/`, `https://example.org/` and `mailto:you@yourdomain.com` links are placeholders — point them at your real profiles, project demos and email.
- `resume.pdf` and the "Updated [Month Year]" text in every footer should be kept current as you update the site.

## Structure

```
index.html                       Home: hero, stats, projects, how I work, templates
process.html                     How I build things, stage by stage
about.html                       Bio, principles, what I'm looking for
contact.html                     Email, LinkedIn, GitHub, resume, location
404.html                         Not-found page (served automatically by GitHub Pages)
projects/project-template.html   Case study template: PRD, design, TDD, build, retro
assets/css/site.css              The one stylesheet, built on tokens.json's custom properties
assets/img/                      Images (empty except for a placeholder Open Graph image to add)
docs/                            Project PRDs and TDDs, as PDFs
resume.pdf                       Resume PDF
scripts/make-placeholder-pdf.ps1 Regenerates a tiny placeholder PDF (used to make the three above)
.nojekyll                        Tells GitHub Pages not to run Jekyll on this repo
```

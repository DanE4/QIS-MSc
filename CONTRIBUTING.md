# Contributing Class Notes

This site is built for mixed backgrounds, including students new to physics. Keep notes clear, linked, and welcoming.

## Who can do what

- Everyone can commit directly to `main`.
- Pull Requests are optional and recommended when you want review or for larger/riskier changes.

## File naming rules

- Use `Title-Case-With-Dashes.md` for note files.
- Put each note in the correct course/week folder.
- Put course-wide PDFs/slides in `content/<Course>/resources/`.
- Put week-specific PDFs/slides in `content/<Course>/Week-XX/resources/`.

## Method A: GitHub Web UI (no install needed)

1. Open the repository in your browser.
2. Navigate to the correct folder (for example `content/NFYK23002-Introduction-to-Quantum-Information-Science/Week-02/`).
3. Click `Add file` -> `Create new file`.
4. Name your file (example: `Bloch-Sphere.md`).
5. Copy `templates/Class_Note_Template.md` and fill it out.
6. Add links to related concepts using wikilinks like `[[Your-Concept-Page]]`.
7. Click `Commit changes...` and commit directly to `main`.
8. Optional: create a branch and open a Pull Request if you want feedback before merge.

## Method B: Local clone + editor (Obsidian, VS Code, or other Markdown editor)

1. Clone the repo:
   ```bash
   git clone --recurse-submodules <repo-url>
   cd QIS-MSc
   ```
2. Open the folder with your preferred tool:
   - Obsidian (vault workflow)
   - VS Code (Markdown + Git workflow)
   - Typora/MarkText/any Markdown editor
3. Create/edit notes in the right `content/` course folder.
4. Use wikilinks (`[[Concept]]`) to connect your note to existing ideas.
5. Commit your changes and push directly to `main`:
   ```bash
   git add .
   git commit -m "Add notes on <topic>"
   git push origin main
   ```
6. Optional PR flow (if you want review):
   ```bash
   git checkout -b notes/<short-topic-name>
   git push -u origin notes/<short-topic-name>
   ```
   Then open a Pull Request on GitHub.

## PDFs on the site (view + download)

Quartz/GitHub Pages serves PDFs as static files, so you can do both:

- View in browser: `[My PDF](./My-File.pdf)`
- Download link: `[Download My PDF](./My-File.pdf){download="My-File.pdf"}`

Optional inline embed (browser-dependent):

```html
<iframe src="./My-File.pdf" width="100%" height="700"></iframe>
```

Best practice: always include both an open link and a download link.

## Wikilink guide

- Use `[[Shared-Wiki/Your-Concept-Page]]` if you know the exact page path.
- Use `[[Your-Concept-Page]]` for concept-first linking; Quartz resolves closest matches.
- Add a `## Related` section at the bottom with 2-5 meaningful links.

## Minimal quality checklist

- [ ] Frontmatter includes title, tags, author, course, week, audience.
- [ ] Includes a `TL;DR` callout.
- [ ] Defines any specialized terms before deep math.
- [ ] Includes at least one wiki link to `content/Shared-Wiki/`.
- [ ] Math renders with `$...$` for inline and `$$...$$` for block equations.
- [ ] Sources are listed.

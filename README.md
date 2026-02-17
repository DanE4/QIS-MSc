# QIS-MSc

Interactive Quartz v4 collection of notes for the QIS MSc program.

## What this repo is

This repository hosts one connected knowledge graph across compulsory and restricted-elective courses, so students can move between notes and shared concepts without losing context.

Core features:
- Obsidian-style wikilinks (`[[Concept]]`)
- Graph view and backlinks
- Hover previews (popovers)
- KaTeX math rendering for advanced notation
- GitHub Pages deployment via GitHub Actions

## Repository structure

```text
content/
  NFYK23002-Introduction-to-Quantum-Information-Science/
    resources/
      EXAMS.md
    Course-Overview.md
    Week-01/
      Lecture-Notes.md
      resources/
  NMAK23007-Introduction-to-Quantum-Computing/
    resources/
      EXAMS.md
    Course-Overview.md
    Week-01/
      Lecture-Notes.md
      resources/
  DTU-10385-Quantum-Information-Technology/
    resources/
      EXAMS.md
    Course-Overview.md
    Week-01/
      Lecture-Notes.md
      resources/
  NDAK24010-Quantum-Error-Correction/
    resources/
      EXAMS.md
    Course-Overview.md
    Week-01/
      Lecture-Notes.md
      resources/
  NMAK14020-Quantum-Information-Theory/
    resources/
      EXAMS.md
    Course-Overview.md
    Week-01/
      Lecture-Notes.md
      resources/
  NFYK23005-Physical-Implementations-of-QIP/
    resources/
      EXAMS.md
    Course-Overview.md
    Week-01/
      Lecture-Notes.md
      resources/
  DTU-02196-Quantum-Compilers/
    resources/
      EXAMS.md
    Course-Overview.md
    Week-01/
      Lecture-Notes.md
      resources/
  DTU-02195-Quantum-Algorithms-and-Machine-Learning/
    resources/
      EXAMS.md
    Course-Overview.md
    Week-01/
      Lecture-Notes.md
      resources/
  DTU-10386-Experimental-Techniques-in-Quantum-Technology/
    resources/
      EXAMS.md
    Course-Overview.md
    Week-01/
      Lecture-Notes.md
      resources/
  DTU-10380-Quantum-Optics/
    resources/
      EXAMS.md
    Course-Overview.md
    Week-01/
      Lecture-Notes.md
      resources/
  DTU-10387-Scientific-Computing-in-QIS/
    resources/
      EXAMS.md
    Course-Overview.md
    Week-01/
      Lecture-Notes.md
      resources/
  Shared-Wiki/
  assets/
```

Resource rule:
- Use `content/<Course>/Course-Overview.md` for course-level overview pages.
- Use `content/<Course>/resources/EXAMS.md` for course-wide files and exam links.
- Use `content/<Course>/Week-XX/resources/README.md` for week-specific material.

## Contribution model

- Everyone can commit notes directly to main.
- Pull requests are optional and useful when someone wants feedback before publishing.

Full contributor instructions: `CONTRIBUTING.md`.

## Local development

```bash
git clone --recurse-submodules <your-repo-url>
cd QIS-MSc
./scripts/sync-content.sh
cd quartz
npm ci
npx quartz build --serve
```

## Deployment

- Workflow: `.github/workflows/deploy.yml`
- Trigger: push to `main` (and manual dispatch)
- Output: GitHub Pages site from `quartz/public`

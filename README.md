# Personal website

Quarto source for <https://cgcostanzo.github.io>.

## Editing

Open `charlescostanzo.Rproj` in RStudio. Pages are `index.qmd` (About), `research.qmd`,
`teaching.qmd`, and `cv.qmd`; files to link to (PDFs, a photo) go in `files/`. Orange
"To fill in" boxes mark what still needs content; delete each one once it is done.

Preview locally with `quarto preview` (or the Build pane's Render Website).

Dated entries (courses, CV lines) are Markdown definition lists inside an `entries` div,
which lays them out with the date in a left-hand column:

```markdown
::: {.entries}
2026
:   **Title of the thing**\
    One line of detail.
:::
```

Papers and talks on the Research page are `pub` divs, with an optional links line and a
collapsible abstract:

```markdown
::: {.pub}
**Paper title** (2026). *Journal*. Status.\
With Coauthor One and Coauthor Two.

::: {.pub-links}
[Paper](https://doi.org/...) [Replication code](https://github.com/...)
:::

<details>
<summary>Abstract</summary>

The abstract.

</details>
:::
```

## Style

The look follows the [erie](https://github.com/cgcostanzo/erie) beamer theme: black
Latin Modern text on white, lake blue (`#054F50`) as the accent, and a short rule under
each section heading. Headings are set in Jost, a Futura-style geometric sans. Each page
has a faceted polyhedron (Research: icosahedron, Teaching: stella octangula, CV: cube),
and the navbar mark shows all three. The home page shows piping plovers
and their chicks on Headlands Beach at sunrise, below the Fairport Harbor lighthouse, drawn
in inline SVG after Charley Harper.

- `theme/erie-light.scss`, `theme/erie-dark.scss`: Bootstrap colors and fonts
- `styles.css`: everything else, including the home-page art and its animation
- `files/fonts/`: self-hosted Latin Modern and Jost
- `filters/plain-spaces.lua`: stops the wide gap after "Ph.D." in Latin Modern

## Publishing (GitHub Pages)

The site is served at the root address only if the GitHub repository is named
`cgcostanzo.github.io`. The local folder name does not matter.

1. Create an empty public repository named `cgcostanzo.github.io` on GitHub.
2. In this folder: `git init`, commit, and add that repository as `origin`.
3. Run `quarto publish gh-pages` (the same way as the STAT 184 site). It renders the
   site and pushes it to the repository's `gh-pages` branch.
4. In the repository's Settings > Pages, set the source to the `gh-pages` branch.

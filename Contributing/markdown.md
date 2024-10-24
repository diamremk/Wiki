---
title: "Markdown"
---

If you've never heard of markdown before, do not fear! It isn't hard to get started. One of the best places to find examples is actually here, on this wiki. You can hit the ![[edit-icon.svg]] button at the bottom of any page to see and edit the markdown source.

## Hello World

To make a heading, you use `#`. Headings can have different levels that change the way the heading is rendered. In general, more `#` will make the heading smaller.

```markdown
# Hello World

## Hello World

### Hello World

#### Hello World
```

# Hello World

## Hello World

### Hello World

#### Hello World

For a quick reference, see the [Commonmark 5-minute tutorial](https://commonmark.org/help/).

## Special wiki-specific markdown features

This wiki uses [Emanote](https://emanote.srid.ca/) which has some extra features not present in normal markdown. Some of them will be detailed here. Many of the extra features are also supported by [Obsidian](https://help.obsidian.md/Home) a popular markdown note-taking tool. Click the ![[emanote-logo.svg]] icon at the bottom of the page to view the emanote documentation.

### Wiki Links

Pages should be linked to using wiki links.

```markdown
[Link to heading](./markdown.md/#callouts)
[[Contributing]] will link to Contributing/index.md
[[markdown]] will link to this page
[[markdown|This will link to this page]]
```

[Link to heading](./markdown.md#callouts)

[[Contributing]] will link to Contributing/index.md

[[markdown]] will link to this page

[[markdown|This will link this page]]

### Callouts

Emanote supports limited [obsidian-style callouts](https://help.obsidian.md/Editing+and+formatting/Callouts), though foldable callouts are not supported

```markdown
> [!tip]
> This is a tip
```

> [!tip]
> This is a tip

```markdown
> [!warning]
> This is a warning
```

> [!warning]
> This is a warning

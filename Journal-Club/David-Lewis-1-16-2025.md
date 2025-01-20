---
title: Bacillus subtilis GRN
author: David Lewis
date: 1/16/2025
---

> [!warning]
> This is a work in progress

<iframe style="width: 100%; margin: 20px; aspect-ratio: 16/9" src=https://illustratedman-code.github.io/Journal-club-1-16-2025/#></iframe>

> [!note]
> You can see the speaker notes by clicking on the presentation above and typing "s".

- [printable-html-link with speaker notes added](https://illustratedman-code.github.io/Journal-club-1-16-2025/?print-pdf)
- [Annotated Pdf of paper](journal-club-papers/grn-bacillus-subtilis-annotated.pdf)

**Article title: An Experimentally supported model of the _Bacillus subtilis_ global transcriptional regulatory network**

## Summary

This paper attempts to create a model of the transcriptional machinery within the _Bacilius subtilis_ organism.

![Bacillus_subtilis](https://github.com/user-attachments/assets/814c04a4-7e85-4940-9d6b-d85442f88d08)

More specifically, the paper attempts to model the relationships between genes. When one gene is upregulated, how does that effect other genes?

### GRN vs TRN vs GTRN

A gene regulatory network is any regulatory relationship between epigenetics factors within a cell. A transcriptional regulatory network within the context
of this paper is a gene regulatory network that is inferred using transcriptional data.

## Methods

### Network component analysis

Network component analysis is a method with the same objective as PCA, namely to decompose a matrix X into 2 components P and A.

$$X = PA$$

However, PCA requires components to be orthogonal to each other. Network component analysis does not make any assumptions about the data.

Instead it requires a "prior network" $P$ with known interactions between nodes. These interactions are quantified by values in the matrix $P$.

The goal of network component analysis is to estimate the value of A.

### Inferelator

The inferelator tool makes use of the baysian best-subset regression method for "inferring" the gene transcriptional network.

> [!note]
> I'm thinking asking people to put a write up of their presentation on the wiki could be a good idea.
> That way, there could be a reference to the material while still allowing the presenter
> to put as little text on the slides as they want. I'm always split on whether or not to include detailed explanations
> in slides because that way they make better reference material, but usually the presentation itself
> is decreased in quality.

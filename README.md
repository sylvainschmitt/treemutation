# [TreeMutation](https://sylvainschmitt.github.io/treemutation/)

*Mutation in the tropical tree canopy.*

My analyses and participation as a postdoc in the TreeMutation project that led to the following publications:

* Schmitt, S., Heuret, P., Troispoux, V., Beraud, M., Cazal, J., Chancerel, É., ... & Tysklind, N. (2024). Low-frequency somatic mutations are heritable in tropical trees Dicorynia guianensis and Sextonia rubra. *Proceedings of the National Academy of Sciences, 121(10), e2313312121*. [10.1073/pnas.2313312121](https://www.pnas.org/doi/10.1073/pnas.2313312121)
* Schmitt, S., Leroy, T., Heuertz, M., & Tysklind, N. (2022). Somatic mutation detection: a critical evaluation through simulations and reanalyses in oaks. *Peer Community Journal, 2*. [10.24072/pcjournal.187](https://peercommunityjournal.org/articles/10.24072/pcjournal.187/)

Have a nice reading.

*Sylvain*

## Communications & Articles

Links and statistics can be found (not exhaustive) on [Altmetric](https://pnas.altmetric.com/details/160139468/news).

### Scientific articles (preprint & peer review)

* First paper [peer-review](https://genomics.peercommunityin.org/articles/rec?id=163)
* First paper [preprint](https://genomics.peercommunityin.org/articles/rec?id=163) (with version history)
* Second paper [preprint](https://www.biorxiv.org/content/10.1101/2023.06.05.543657v2) (with version history)

### Press and radio

* [The Conversation](https://theconversation.com/une-nouvelle-etude-decortique-lorigine-des-mutations-genetiques-224662) (french 🇫🇷)
* [Sciences et Vies](https://www.science-et-vie.com/nature-et-environnement/une-nouvelle-etude-decortique-lorigine-des-mutations-genetiques-127937.html) (french 🇫🇷)
* [Technology Networks](http://ct.moreover.com/?a=53221502429&p=1pl&v=1&x=yIzK9TJuu8AhEC_X4YZfHQ)
* [Science Mag](https://scienmag.com/unveiling-rare-diversity-the-origin-of-heritable-mutations-in-trees/)
* [Bioengineer](https://bioengineer.org/unveiling-rare-diversity-the-origin-of-heritable-mutations-in-trees/)
* France Culture (coming soon, french 🇫🇷)
* Natura Sciences (coming soon, french 🇫🇷)

### Press release

* [INRAE](https://www.inrae.fr/actualites/silence-ca-mute-origine-mutations-heritables-arbres-0) (french 🇫🇷)
* [CIRAD](https://www.cirad.fr/espace-presse/communiques-de-presse/2024/origine-des-mutations-heritables-des-arbres) (french 🇫🇷)
* [CNRS](https://www.cnrs.fr/fr/presse/silence-ca-mute-origine-des-mutations-heritables-des-arbres) (french 🇫🇷)
* [CEBA](https://www.labex-ceba.fr/assets/treemutation-publication-des-resultats-du-projet-strategique-ceba/) (french 🇫🇷)
* [INRAE first paper](https://www.inrae.fr/en/news/detecting-tree-mutations-using-method-developed-medical-science) (french 🇫🇷)

## Codes

All codes have been summarised in a single repository [sylvainschmitt/treemutation_codes](https://github.com/sylvainschmitt/treemutation_codes/tree/v0.1.0).
This repository includes:

* [genomeAnnotation](https://github.com/sylvainschmitt/genomeAnnotation/tree/c0493f536ab7d6915d9eed68a4288dc98a34112d): singularity & snakemake workflow to annotate genomes transposable elements (TE) and genes
* [detectMutations - Angela](https://github.com/sylvainschmitt/detectMutations/tree/622498154103daccd6795b55362c1d88ca546303): singularity & snakemake workflow to detect mutation with Strelka2 in the *D. guianensis* tree
* [detectMutations - Sixto](https://github.com/sylvainschmitt/detectMutations/tree/797b07d0757d77347ad9eca11532dab87baa2922): singularity & snakemake workflow to detect mutation with Strelka2 in the *S. rubra tree*
* [detectMutations - fruits](https://github.com/sylvainschmitt/detectMutations/tree/252323eab5fbf994e09e11579338d462b2b5c707): singularity & snakemake workflow to detect mutation with GATK in the fruits of the *D. guianensis* and the *S. rubra* trees
* [treemutation](https://github.com/sylvainschmitt/treemutation/tree/fc6a2eeef7b2bb1d178ebfbf3a79652ca13fb9df): R code for all the project and manuscript analyses (this repository)

## Data

Genomic and transcriptomic reads from leaf, cambium, and fruits and corresponding genomes are available in [GenBank](https://dataview.ncbi.nlm.nih.gov/object/PRJNA823677).
Results and intermediary files are available on [Zenodo](https://zenodo.org/records/10089692).

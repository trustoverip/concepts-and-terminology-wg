# Add Terms

There are three different ways to add data to a glossary.

### Add a single term by raising a github issue

In our github repo, click Issues > New Issue > New Term. Fill out the template.

### Add a batch of data

In our github repo, click Issues > New Issue > New Import. Fill out the template, choosing "no" under "Repeatable?"

### Set up a repeated import

In our github repo, click Issues > New Issue > New Import. Fill out the template, choosing "yes" under "Repeatable?"


<hr>
(old content, to be merged with what's above)

# How to Contribute

The ToIP corpus of terminology is a living artifact comprised of concepts and terms at various stages of the [Content Contribution Lifecycle Process](Content_Lifcycle.md).

This document provides instructions for how to contribute to the corpus.

## Concepts and Terms

### Make a suggestion

1. Go to GitHub to open a Concept or Term Issue: https://github.com/trustoverip/concepts-and-terminology-wg/issues/new/choose using the predefined template.
2. Someone in the community will then tackle this issue by making a contribution.

### Make a contribution

The ToIP GitHub Organization follows the commonly used *pull request process*. This implies that contributors work on local copies of a ToIP repo and then submit pull requests when they have something to contribute. You can find fantastic learning courses on GitHub for beginners at [GitHub Labs Education](https://lab.github.com/).

1. [Fork](https://help.github.com/en/github/getting-started-with-github/fork-a-repo) the [GitHub repo](https://github.com/trustoverip/concepts-and-terminology-wg/).
2. [Clone](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository-from-github) your local instance of the forked repo.
3. Accept an existing issue or open a new issue that you wish to work on.
4. Using guidance from the [Content Contribution Lifecycle Process](Content_Lifcycle.md), create a new markdown file in the ```content``` directory under the appropriate directory substructure.  This new markdown file needs to conform to filename conventions and content format requirements. Please see [Contribution Requirements](Contribution_Requirements.md] for guidance.
5. Add the new file to the ```mkdocs.yml``` file. *NOTE: This step should be eliminated once Issue #9 is addressed.*
5. [Push](https://help.github.com/en/github/using-git/pushing-commits-to-a-remote-repository) your changes to your remote repo.
6. [Submit a Pull Request (PR)](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request-from-a-fork)

Your PR will be reviewed by a repo maintainer and merged. While your contribution will be live and accessible moments after the PR merge, the status of your concept or term will follow the state lifecycle outlined in the [Content Contribution Lifecycle Process](Content_Lifcycle.md).

## Content Generation
Since there may be prior art that is pertinent to the ToIP mission, such as:

* DIF Glossary Working Group
* Sovrin Glossary
* NIST Glossary: A Taxonomic Approach to Understanding Emerging Blockchain Identity Management Systems (p50-51)

there may be a need to develop code that will generate content from an external source.

Since each generation process will differ, the general instructions for making such a contribution are as follows:

1. Open an Issue using the [Build Process Issue Template](https://github.com/trustoverip/concepts-and-terminology-wg/issues/new?assignees=&labels=&template=build-process-issue-template.md&title=%5BPROCESS%5D+%3Cissue%2Ffeature+desc%3E).
2. Collaborate with Work Group members on the applicability and design for the Issue solution.
3. Develop the solution. The code for the new solution should be inserted into the repo directory structure under a new folder within the ```process``` directory.
5, Uopdate the ```Makefile``` to execute the content generation solution.
6. Submit a PR.

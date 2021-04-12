# Curation Tool Specification: curate-check

The curation tool 'curate-tag' is a script that places tags into, or removes tags from a subset of the corpus from the [internal data model](internal-data-model.md), thereby providing a means to (re)organize sets of concepts and terms that somehow can be seen as belonging together. 

## Syntax

```
tt curate-tag <record-glob> <plus-or-minus> <tag> -- Add or remove a tag from all
          files that match the specified globbing pattern.
```
where:

- <record-glob> is a [globbing pattern](reference_needed) that is used to select a subset of all the corpus files.
- <plus-or-minus> is a character `+` or `-`, indicating that `<tag>` should be added to the selected files, or removed from them respectively.
- <tag> is a short text that may serve as a tag in term or concept files.

## Errors
TODO: How are errors handled?

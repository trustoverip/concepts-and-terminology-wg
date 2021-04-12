# Curation Tool Specification: curate-check

The curation tool 'curate-check' is a script that checks a subset of the corpus from the [internal data model](internal-data-model.md) for for well-formedness, thereby providing some assurances regarding the integrity of the corpus and its contents. 

## Syntax

```
tt curate-check <record-glob> -- Read the corpus and check for well-formedness in
          all files that match the specified globbing pattern. Update the 
          #checked status of any records that change status. Report errors.

tt curate-checklink <record-glob> -- Validate hyperlinks in all files that match the
          specified globbing pattern. Report errors.

tt curate-tag <record-glob> <plus-or-minus> <tag> -- Add or remove a tag from all
          files that match the specified globbing pattern.
```
where:

- <record-glob> is a [globbing pattern](reference_needed) that is used to select a subset of all the corpus files.

Example: `check eSSIF-Lab\**` will check all terminology artifacts of the scope `eSSIF-Lab`.

## Specification of the checks that are performed

**to be done**

### Images
TODO: are there any checks done on images (e.g. their (non)existence)?

## Macros
TODO: Should we check macros? For example, validate hyperlinks to confirm that they are still valid, and then update references in the way they sometimes show up in bibliographies: "retrieved &lt;date&gt;"?.

## Hyperlink Adjustment
TODO: How/what to check regarding hyperlinks? Is that done here, or is it only part of the [checklinks tool](tool-curation-check-links.md)

## Errors
TODO: How are errors handled?

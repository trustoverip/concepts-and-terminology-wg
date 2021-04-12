# Export Tool Specification: export-mkdocs

The export tool for MkDocs is a script that transforms a subset of the corpus from the [internal data model](internal-data-model.md) to a new structure that is suitable for being further processed by MkDocs (as well as other rendering tools, e.g. SpecUp, Docusaurus), and/or creating a glossary. 

## Syntax

```
export-mkdocs <scope> <path> <export-def>
```
where:

- <scope> is the name of the scope for which terminological artifacts are being exported. This may also be specifeid in the <export-def> file;
- <path>  is the path to which the exported files will be written. If omitted, exported files will be written to the current directory.
- <export-def> is a yaml file that contains the instructions of what to select from the corpus and **[anything else?]**;

Example: `export-mkdocs eSSIF-Lab eSSIF-Lab-glossary-def.yaml` will export data as specified in the file `eSSIF-Lab-glossary-def.yaml` for use with the `eSSIF-Lab` scope.

## Export definition

The export definition file is a YAML file with the following attributes (that may be overridden by optional commandline parameters):

- scope="scope-id". This attribute specifies the 'home scope' of the export if it hasn't been specified on the command line. The 'home scope is the scope that will be using the results of the export. This attribute is needed to convert [cross-scope hyperlinks](reference_needed) such that the reference remains intact after export. It is also needed to adjust the filenames of exported terminological artifacts that originate from other scopes.
- select= **to be properly defined**. This attribute specifies the terms, concepts (and later also other artifacts) that are to be exported from the corpus.
- destpath="path". This attribute specifies the path to which the files are to be written if the path isn't specified on the command line.

**to be further elaborated/revised. One can envisage preferences for the names of the files being written in cross-scoped settings, and other stuff.**

## Export data model

The result of this export is a collection of markdown files that is ready to be transformed by the publication tool MkDocs. However various other publication tools such as SpecUp or Docusaurus are also equipped to use this data model. 

All files that are exported are written into a single folder. Files are named according to their associated [term ID](term-record.md#naming). However, since files that originate from another scope may have the same name, their names are prefixed with the [name of the scope](reference_needed) from which they come. 

The internal structure of these files is as follows:

## Term-related fields

All fields from the associated [term record](term-record.md) appear exactly as they did in the internal data model, except that [hyperlinks are adjusted](#hyperlink-adjustment).

## Concept-related fields

Most fields from the associated [concept record](concept-record.md) appear exactly as they did in the internal data model, except that [hyperlinks are adjusted](#hyperlink-adjustment). The execption is the [Concept ID field](concept-record.md#concept-id), which is suppressed.

## Generated fields

The following fields are automatically added to each exported file by the export algorithm:

* Tags U: The union of the Tags field and the Concept Tags field.
* Tags I: the intersection of the Tags field and the Concept Tags field.
* Hovertext: The first sentence of the Definition field.
* Contributors: A list of all github handles that have submitted content for this record.
* Synonyms: A list of [local hyperlinks](hyperlinks.md#local-links) to other terms that share the same definition.
* Term commit: The latest commit hash of the term record.
* Term version: How many unique versions of the term record exists.
* Concept commit: The latest commit hash of the concept record.
* Concept version: How many unique versions of the concept record exists.
* Export date: The UTC ISO 8601 timestamp when the export was created.

## Images
TODO: Are externally referenced images downloaded? At least internally referenced images should be exported. 

## Macros
TODO: Should we expand macros? For example, validate hyperlinks to confirm that they are still valid, and then update references in the way they sometimes show up in bibliographies: "retrieved &lt;date&gt;"?.

## Hyperlink Adjustment
* [Local links](hyperlinks.md#local-links) that are now part of the record are removed (if they don't have a fragment)
* [Local links](hyperlinks.md#local-links) that are not part of the current record are converted to refer to a sibling file.
* [Cross-scope links](hyperlinks.md#cross-scope-links) are converted to local links with an appropriately adjusted filename.

## Errors
TODO: How are errors handled?

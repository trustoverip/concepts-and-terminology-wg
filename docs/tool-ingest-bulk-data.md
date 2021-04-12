# Ingestion Tool Specification: ingest-bulk-data

The ingestion tool for Bulk Data is a script that takes a set of markdown files as input, and converts their contents into terminological artifacts that fit in the corpus (i.e. in its [internal data model](internal-data-model.md)). 

## Syntax

```
ingest-bulk-data <scope> <path> <ingest-def>
```
where:

- <scope> is the name of the scope that will own the terminological artifacts that are being created/updated. This may also be specifeid in the <ingest-def> file;
- <path> is the path form which the markdown files to be ingested will be taken from. If omitted, exported files will be written to the current directory.
- <ingest-def> is a yaml file that contains the instructions that specify/further limit the actions that the ingestion tool has to take and **[anything else?]**;

Example: `ingest-bulk-data eSSIF-Lab eSSIF-Lab/framework/docs essif-Lab-ingest-def.yaml` will ingest all markdown files found in the directory `eSSIF-Lab/framework/docs`, and ingest them into the `eSSIF-Lab` scope of the corpus according to the further specifications found in `essif-Lab-ingest-def.yaml`.

## Ingest definition

The ingestion definition file is a YAML file with the following attributes (that may be overridden by optional commandline parameters):

- scope="scope-id". This attribute specifies the 'home scope' of the ingestion if it hasn't been specified on the command line. The 'home scope is the scope under which all ingested contributions will be placed.

**to be further elaborated/revised. One can envisage preferences for the names of the files being written in cross-scoped settings, and other stuff.**

## Ingest Data Model

The Ingest Data Model is the structure of files to be ingested, with the requirements and constrains that a file must satisfy in order to become eligable for ingestion.

Ingestible files must be markdown, and be based on any of the following templates

- [template-term.md](reference_needed). This file specifies a new (or modified version) of a term. **to be further elaborated**
- [template-concept.md](reference_needed). This file specifies a new (or modified version) of a concept. **to be further elaborated**
**anything else?**

### Section to be moved to the template files

The following texts should be moved to the template files, as they provide guidance for authors to fill in the templates.

#### <word or phrase you're defining>
>_In the header above, insert the word or phrase you want to add. See https://github.com/dhh1128/ctwg/blob/master/docs/term-conventions.md for conventions about capitalization, punctuation, plurals, spelling, and so forth. If your term has a short form or acronym, put the long form first, and then the short form in parentheses._

#### Definition
>_What does this word or phrase mean, precisely? The first sentence of your definition acts as hovertext in hyperlinks, so make it as as pithy as possible. After that, add as much detail as you need: what criteria allow you to know for certain whether X is or is not an example of the concept? What misunderstandings need to be eliminated? If your term is a true synonym for something already defined in the glossary, just hyperlink to that definition rather than rewriting or copying it._

#### Scope
>_Terms typically have a meaning only within a particular context or domain of knowledge. For example, a "run" means one thing to skiers, and quite a different thing to manufacturers of women's stockings. In a TOIP context, scopes are associated with groups -- a legal taskforce working on guardianship, or UX experts working on COVID credentials, for example. The group that "owns" a term will curate all github issues for it, set the term's status, and publish it in their glossary. See https://github.com/dhh1128/ctwg/blob/master/docs/curation.md. Different groups can define the same word or phrase in different ways (and that's fine; the system will handle it); that's why this tag is required. Associate this term with its group or scope so the right people get involved. For example: `#tswg` would associate the term with the Tech Stack Working Group._ See the various group tags in the predefined hash tags list at https://github.com/dhh1128/ctwg/blob/master/docs/hash-tags.md.

#### Usage Examples
>_Optional but encouraged. Provide one or more short excerpts (or links) that show how the term has been used within the specific community of interest. These could come from a spec, github issues, whitepapers, etc._

#### Tags
>_Add any additional hash tags that you feel would allow grouping in useful ways. See https://github.com/dhh1128/ctwg/blob/master/docs/hash-tags.md for details and conventions._

<hr/>

## Images
TODO: How are images that are part of the bulk ingestion processed? What does this mean for the conversion of links to such images? 

## Macros
TODO: Should we expand macros? For example, validate hyperlinks to confirm that they are still valid, and then update references in the way they sometimes show up in bibliographies: "retrieved &lt;date&gt;"?.

## Hyperlink Adjustment
* [Local links](hyperlinks.md#local-links) that are now part of the record are removed (if they don't have a fragment)
* [Local links](hyperlinks.md#local-links) that are not part of the current record are converted to refer to a sibling file.
* Cross-scope links: what syntax do authors use to refer to terms/concepts that are defined in other scopes?

## Errors
TODO: How are errors handled?

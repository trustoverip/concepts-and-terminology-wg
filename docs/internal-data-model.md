# Internal Data Model

Our corpus is organized into folders and files as follows:

* `/corpus` -- root of all corpus data
* `/corpus/<scope>` -- data belonging to a given group, where `<scope>` comes from [pre-defined hashtags](hash-tags.md#predefined) (minus the hashtag character itself)
* `/corpus/<scope>/terms` -- markdown files, each containing one [term record](term-record.md).
* `/corpus/<scope>/concepts` -- markdown files, each containing one [concept record](concept-record.md).
* `/corpus/<scope>/<other>` -- markdown files, each containing one record of another type. This is an extensibility feature that will be documented elsewhere. Examples of `<other>` might include `pattern` as developed in ESSIF-Lab.


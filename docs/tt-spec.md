# TOIP-Terminology and Tooling

TOIP-Terminology Toolset (TT for short) is a set of tools that help ToIP groups to establish their terminology, and publish it for internal and external use. It also helps the CTWG to accomplish its mission to facilitate crisp mental models and consistent, carefully defined language across all the work activities in the various groups of the foundation.

This document explains the vision behind TT, ans specifies its requirements.
Its audience is the CTWG working group.

### Vision

The CTWG acknowledges that within ToIP, various groups exist that have a need 
- for establishing and maintaining a common terminology that its members agree on and use consistently in their group-related work.
- for publishing its terminology, not just as a reference (glossary) for its own members, but also to accommodate non-members (or members of other groups) as they want to learn the particulars of the group's terms, the mental models behind them, etc.
- for learning the meaning of terms as they are used in other groups, the mental models behind them, etc.

To meet these needs the CTWG uses the term 'scope' to refer to a namespace that has (well defined) terms, where the terms in the namespace relate to one another in a consistent and coherent fashion. Each scope is 'owned' by a ToIP group, which means that the group must task individuals (which we call 'curators') that do the curation/management of the terms, their definitions, coherence and consistency, and ensure that the groups terminology, mental models etc. become available to the group as well as outside the group in ways that are fit to the groups needs.

While (group) curators decide about the contents of the corpus, it is the job of the CTWG to facilitate them in various ways. In the long run, we expect the CTWG to just having to support curators with the real terminological issues that may arise, such as how to handle cases where different groups use the same term in a similar, but not the same meaning. In the short run, however, the CTWG will need to oversee the setting up of curation processes in various groups, and supporting them with some basic tooling. 

A major task of the CTWG is to establishe a 'corpus', i.e. a set of (normalized, complex) data, which contains the definitions of concepts, terms and other terminological artefacts of all scopes that groups decide they want/need to curate. Its function is similar to that of a database: data can be created and updated (ingested) as well as read (exported, extracted). Thus, it can be seen as the single source of truth for all terminology of all ToIP groups.

One can envisage the lifecycle of the data as follows:

![lifecycle](../docs/lifecycle.png)

The Ingestion phase is where a group decides about what terminological artifacts (terms, concepts, patterns, ...) it wants to contribute to the corpus, and also how its members can propose such contributions. A group decides which scope(s) it will be curating. It also decides how its members (or others) must provide their contributions to these scopes, e.g. as a github issue, or as a directory that contains lots of markdown files that define terms. Group curators are expected to decide what contributions can proceed into the corpus, and facilitate contributions e.g. by making suitable templates available. and use one or more 'ingestion tools' to help them convert such contributions (which we call 'ingestible data') in the format that is specified for the corpus, thereby making the contributions available for everyone inside and outside the group.

The Curation phase is where curators manage the content in the corpus, and where the bulk of CTWG focus will be at in the long run. This is about the management of different terminolgies, discussing how to align them between scopes (if necessary), etc.

The Export phase is where the normalized, database-like data of the corpus is converted into a denormalized set of terminological artifacts that contain all artifacts that may be needed in a scope, or a group. One can envisage that any changes that are made in the corpus and that are relevant to a group, would be signaled, allowing the (curators of that) group to export the corpus, and update the relevant artifacts that the group needs.

One can envisage the entire process as follows:

![curation](../docs/curation.png)

It shows how groups manage their own documents, some of which contribute to the corpus by means of ingestion tooling, wheras others are created and maintained as a result of a (continuous) export of the relevant parts of the corpus. The figure also shows a (possibly virtual) repository that contains the various tools that curators may use.

### Scope

The Toip Toolset (TT) is a specialized set of tools for managing terminology. Specifically, the set of tools consists of 

* 'ingestion tools', i.e. tools that support ingestion of documents such that they can contribute to the contents of the corpus;
* 'curation tools', i.e. tools that support curation of the corpus itself;
* 'export tools', i.e. tools that support export of parts of the contents of the corpus;

It is envisaged that in order to support the different needs of different groups, there will not be a single tool for ingestion. One tool might assist in ingesting github tickets of specified formats, while another ingestion tool might scrape websites, and yet another might take a directory with files that specify terms as input. In the same way, we envisage that multiple export tools will be created for different purposes. Whenever such tools are tested and accepted for use, they are made part of the toolset repository for all to use.

**The** TT-tool can be envisaged as an 'umbrella tool', that allows users to call each of the tools in the toolset, in the same way as is done e.g. in docker, or docker-compose.

Note that TT does NOT replace the standard tools that directly generate our [TOIP deliverables](https://github.com/trustoverip/deliverables/). We already have tools that do that:

* Github is our tool for managing content, versioning, and ticketing.
* Members of the TOIP community use their favorite markdown editors to modify basic data.
* SpecUp is our tool for publishing specifications from markdown.
* MkDocs (and Docusaurus) is the tool for publishing websites and similar documentation from markdown.

None of these tools manage terminology. TT plugs that gap (and _only_ that gap). *It is important to understand that TT itself does not publish glossaries*; rather, it exports data in such a way that a markdown transformation tool can use it as its input (e.g., MkDocs to convert the data into a browsable glossary, or SpecUp to convert the data into hyperlinks in a spec). TT provides a hook that can invoke these other tools.

### People

__Direct users__ of TT include curators, and are imagined to be CTWG members. They have learned some terminology theory and TT's internal data model. A few interested community members might also use TT directly, if they are spending a lot of time doing [curation](../docs/curation.md), or if they are active maintainers of TOIP repos. Direct users invoke TT from the command-line, and must be comfortable with git.

__Indirect users__ of TT are members of the TOIP community who want to contribute to the corpus of terminology, and/or use terms and glossaries carefully, but who have little interest in the underlying tooling. Indirect users trigger TT's behavior through [github issues](../../issues/choose) and PRs; automation and/or curators (human maintainers) then run the TT tool in the background.

Both direct and indirect users benefit from glossaries and other TOIP deliverables that are generated from data emitted by TT.

### The Corpus and Curation tools

The __corpus__ consists of a collection of markdown files in a github repo. Conceptually, this corpus plays the same role as a database &mdash; it is the single source of truth for all terminology under TT's management. We store the corpus in github, rather than a standard DB, because:

* We want to be able to work with the corpus offline or locally.
* Many sophisticated DB features (ACID transactions, fancy queries, permissions, replication, concurrent editing...) are unnecessary.
* We want strong github integration: ticketing, the PR process, versioning, branching.
* Using github maximizes our alignment with the rest of TOIP.
* Github allows TT to be used by other open source communities with minimum friction.

This corpus is organized into an [internal data model](../docs/internal-data-model.md).

#### High prio Curation Tools

Curation tools that we will need on short notice include:

```
tt curate-check <record-glob> -- Read the corpus and check for well-formedness in
          all files that match the specified globbing pattern. Update the 
          #checked status of any records that change status. Report errors.

tt curate-checklink <record-glob> -- Validate hyperlinks in all files that match the
          specified globbing pattern. Report errors.

tt curate-tag <record-glob> <plus-or-minus> <tag> -- Add or remove a tag from all
          files that match the specified globbing pattern.
```

### Ingestion and Ingestion tools

Since groups can define their own ways of working, they can also define the kinds of data that they allow their members to candidate for ingestion. However, this freedom comes with the need for an ingestion tool that is capable of transforming the specified kinds of data into the format required for the corpus (the [internal data model](../docs/internal-data-model.md)).

Any ingestion tool (that is made part of the toolset repo) is therefore required to be properly documented, which must include a specification of:

- command line use, if appropriate, including options and possibilities for piping;
- the ingestible data format(s) that the tool accepts;
- the ways in which contents is being processed (which parts are deleted, which are modified - and how);
- specifically: how the various kinds of hyperlinks are going to be transformed.

#### High prio Ingestion Tools

Ingestion is managed through 

1. github issues (see [Add a new term to an existing glossary](../../issues/new?assignees=&labels=term&template=01-new-term.md&title=%5BTERM%5D+%3Cword+or+phrase+you+are+adding%3E). This `tool` takes as input an issue that is raised according to an appropriate template (e.g. the [term-template](reference_needed) or [concept-template](reference_needed)). The issue MUST specify the scope within which it is to be treated. The issue MUST be assigned to a person that is a curator of that scope. This person is then tasked to create a PR that transfers the contents in the issue into appropriate artifacts of the [internal data model](../docs/internal-data-model.md) by creating a PR. PRs will only be accepted if they satisfy the `tt check` and `tt checklink` tests for the globbing patterns that cover the changes in the PR.

2. [Import a batch of data](../docs/tool-ingest-bulk-data.md) ([old ref](../../issues/new?assignees=&labels=import&template=03-new-import.md&title=%5BIMPORT%5D+%3Cdescription+of+data+source%3E)). This tool takes as input data that conforms to what we call the [ingestible data model](../docs/ingestible-data-model.md). This is a simple format that's deliberately intuitive for non-experts. The tool provides [various features](refence_needed) that allow processing of ingested data for QA and normalization purposes.

```
tt ingest-bulk-data <path> <scope> -- Read data from the file or folder at <path>.
          Confirm that the data matches the ingestible data model. 
          If yes, use the data to populate new records for terms and concepts 
          in the portion of the corpus owned by <scope>.
          An important function in this process is autogenerating filenames 
          and IDs for each item in the internal data model.
          Another important function is to convert the syntaxes that its 
          ingestible data model considers valid for refering to other 
          terminological artifacts such that the reference is maintained 
          in the [internal data model](../docs/internal-data-model.md) of the corpus
```

3. PRs. This isn't really a tool, but simply a means by which git-gurus can directly provide content to the corpus by providing artifacts of the [internal data model](../docs/internal-data-model.md) by creating a PR. PRs will only be accepted if they satisfy the `tt check` and `tt checklink` tests for the globbing patterns that cover the changes in the PR.

### Export and Export Tools

Since groups can define their own ways of working, they can also decide on the tools they want to use to produce and render their deliverables, such as SpecUp, MkDocs/Docusaurus, PDF, LaTeX, etc. Since the production/rendering tools each have their own requirements/preferences as to the source documents they ingest, a group that uses them will need an export tool that is capable of transforming the requested part of the corpus from the format of the corpus (the [internal data model](../docs/internal-data-model.md)) into the data formats required by such tools.

Any export tool (that is made part of the toolset repo) is therefore required to be properly documented, which must include a specification of:

- its command line use, if appropriate, including options and possibilities for piping;
- the exported data format(s) that the tool produces (preferably with a list of rendering tools for which that is suitable);
- how to specify which data from the corpus (not) to export;
- how the contents of the [internal data model](../docs/internal-data-model.md) that is to be exported is being processed, in particular:
  - what the resulting export data model looks like in terms of directories, directory names and file names;
  - how the various kinds of hyperlinks that exist in the internal data model are going to be transformed.

#### High prio Export Tools

Export is managed through

1. [MkDocs export](../docs/tool-export-mkdocs.md). This tool exports a subset of the corpus to a designated directory      according such that the MkDocs rendering tools (as well as others, e.g. SpecUp, Docusaurus) can further process them, as follows:

```
tt export-mkdocs <scope> <path> <export def> 
      Exports a subset of the corpus to the directory at <path>
      according to the specifications in the yaml file <export def>.
      Exporting means that the files from the corpus are copied to the
      destingation directory, thereby adjusting filenames, hyperlinks etc.
      in such a way that the relations between them are not broken,
      and the likes of MKDocs can further process the results and
      publish a polished deliverable.
```

There is currently no high-priority need for other export tools.

### Command Line

The TT program can be invoked from any clone of its repo. It lives under /bin/tt (a bash script with executable permissions on posix) and /bin/tt.bat (on windows); both of these are simple wrappers that turn around and invoke /bin/tt.py with the python3 runtime. The syntax of the command line is:

```
tt <toolname> <params>
```
where `<toolname>` refers to the tool to be called, and `<params>` is the parameter list that is passed to the tool.
The high-priority tools are:

- [`ingest-bulk-data`](../docs/tool-ingest-bulk-data.md), for processing bulk data and adding contents to the corpus;
- [`export-mkdocs`](../docs/tool-export-mkdocs.md), that exports a selection of corpus-files to a directory for further processing by e.g. MkDocs.

---
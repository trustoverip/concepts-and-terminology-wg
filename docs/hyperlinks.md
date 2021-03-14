# Hyperlinks

Terminology data needs to be richly linked to maximize its utility. How hyperlinks work is an important subtopic and should be studied carefully.

The following categories of hyperlink are important to CTWG tooling:

* Local links
* Fully qualified links
* Cross-scope links
* Links from issues
* Transverse links
* Transformed links
  
Each of these link types has different semantics, different features, and different behavior at different points in the data lifecycle.

## Local links
A local link is between any two pieces of corpus data in the same scope, with no explicit version or branch. This is the most common kind of link in our data, and it is simple to create. Supposing `term-a` and `term-b` reference one another in their notes, and `term-1` references concept `1-a` for its defintion, we would analyze local links like this:

stage of lifecycle|format of local link
-- | -- |
curate | During curation, the [internal data model](internal-data-model.md) governs. A local link is always represented as a relative path from one record to another. Term records are siblings, so `term-a` references `term-b` as `[B](b.md)`. Concepts and terms are in sibling folders, so `term-a` references its parent concept as `[concept 1](../concepts/1.md)`. Individual fields in a record can be referenced by markdown fragment (e.g., to refer to the notes on `term-a`, use `term-a.md#notes`). Note: for info about referring to corpus data from github issues or PR comments, see [links from issues](#links-from-issues).
export | Exported data is fairly similar to the internal data model, except that a term and its associated concepts are combined into a single de-normalized record that resembles a glossary entry. This means that file `a.md` will contain all the fields from the internal record for `term-a`, as well as the fields from the internal record for its associated concept `1-a`. See the [exported data model](exported-data-model.md) for details.
publish | An important part of configuring publication is deciding how to transform local links. If the publication process is producing a single browsable HTML or PDF file that contains all exported data, each local link from the export becomes an `<a id=foo>` that can be referenced by `#foo` in the doc. If publication is producing a static website with a single file per glossary entry, then the publication process turns every local link into a `foo.html` or `foo.html#fragment` form. If publication is producing hovertext, then the publication process may produce a javascript object where term values are the lookup keys, and hovertext are the values -- and then generate hyperlinks that invoke a javascript function with the appropriate index. Each publication method will be different. The important thing to understand is that tooling will handle this transformation automatically, once configured. 
ingest (batch) | This stage is listed last because it's an anomaly. Different data sources represent local links in different ways, and they are mostly out of scope here. For example, Respec and SpecUp sources will contain `<a href=...>` tags that reference headers or `<a id=...>` or `<dfn>` tags. Markdown sources will probably reference `# header`s. Google Docs can be parsed to find local links using powerful regular expressions to filter cruft. CTWG tools never create local links according to these conventions, but we do write import scripts that have to understand them. Figuring out the details is part of an import task.

## Fully Qualified Links
A fully qualified link is absolute -- not dependent on context or location in any way. This is the preferred form of link to use when citing sources, referring to wikipedia articles, or giving credit for images. For example: `https://example.com/foo/bar/baz.html`.

Fully qualified links are identical across all stages of the data lifestyle and require no special handling. This is nice. However, they are also fragile, because they have a strong opinion about how to locate data, and that opinion usually involves the internet looking like it did when the link was captured. This can cause problems with static html that could otherwise be browsable offline; for this reason, we prefer not to refer to our own terminology data with this type of link.

## Cross-Scope Links
A cross-scope link is between any two pieces of data that are in the corpus, but NOT in the same scope. They thus have different owners, different glossaries, and so forth. The purpose with cross-scope links is to leverage the shared corpus context, without worrying particularly about versions, branches, and so forth. (Contrast [Transverse Links](#transverse-links) below.) To analyze how cross-scope links work, consider a hypothetical example where `chained VC` (an imaginary term owned by the Authentic Chained Data Containers Task Force) references `witness-registry` (an imaginary term owned by the Utility Foundary Working Group.

stage of lifecycle|format of local link
-- | -- |
curate | During curation, the [internal data model](internal-data-model.md) allows us to easily predict a relative path from one record to another. This path will always begin with `../..` for any cross-scope link inside the corpus. The record for `chained VC` will be at `corpus/acdctf/terms/chained-vc.md`, and can therefore reference `witness-registry` at `../../ufwg/terms/witness-registry.md`.
export | Since data export is always of a single scope, cross-scope links are automatically converted to [fully qualified links](#fully-qualified-links) during export.
publish | Publishing tools never have to deal with cross-scope links, since they are converted to [fully qualified links](#fully-qualified-links) during export.

# Links from Issues
During the curate phase of the data lifecycle, you can link directly from a github issue or a PR comment to a corpus record. Your URL should start with the prefix `../tree/master/corpus/` and then append the record's path within the corpus: `../tree/master/corpus/efwg/terms/foo.md`. Such links will be clickable, and take you directly to the data item in question.

>This works because issues and PRs have URLs like `https://github.com/trustoverip/concepts-and-terminology-wg/issues/123`, and need to reference a URL like `https://github.com/trustoverip/concepts-and-terminology-wg/tree/master/corpus/efwg/terms/foo.md`.

# Transverse Links
These are the most precise form of hyperlink. They can reference a specific line of a specific corpus record, on a specific branch, at a specific commit. This might be useful if you need to point to a definition or term as it existed at a particular point in time.

This is the only form of link that's guaranteed to be immutable -- meaning that once you have such a link, the data it retrieves is guaranteed not to change. This is true even if a repo gets completely reorganized, files get renamed or deleted, etc. All other link forms reference a piece of data that can evolve (or disappear) from one fetch to the next.

The downside of transverse links is that they become stale -- not ceasing to work, but ceasing to report the latest information for a given term or concept.

If you are github expert and want to know how to create transverse links, [this doc](https://docs.github.com/en/github/managing-files-in-a-repository/getting-permanent-links-to-files) may be helpful. If you are not a github expert:

1. browse the repo file tree, looking under `/corpus` for the file you want. Once you have the file, look at the file's commit history:

    ![find history](browse-file-history.png)

2. Then, pick a specific commit from the history:

    ![pick commit](pick-commit.png)

3. This will cause github to display all details for that commit. In those details, find the specific file you want to reference. Click the `...` menu and select `View File`:

    ![view file](view-file.png)

    At this point, you can copy the URL in your browser's address bar, and it becomes the transverse hyperlink. (If you want to reference a particular line of the file, see [these instructions](https://stackoverflow.com/a/31282559).)

## Transformer Links

Transformer links are exposed by a web service that the CTWG provides. They are in the form `https://ctwgsvc.trustoverip.org/transform?in=X&out=Y`, where `X` is a link in one of the formats documented above, and `Y` is a data format. The web service fetches the resource at X and runs a process that changes the resource's format. For example, the transformer could fetch a term from the corpus, in the internal data model, and transform it to data in the format of a published glossary entry. This can make corpus data browsable in a more friendly form, instead of a format that makes sense to terminology geeks.
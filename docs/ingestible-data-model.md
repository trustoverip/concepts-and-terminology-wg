# Ingestible Data Model

When we accept concept and terminology data via github issues, we expect it to follow the pattern below. When we perform batch imports, we use a converter to transform data from an external format to this one.

This is a format chosen for maximum ease of use by non-experts. It is de-normalized (in the sense understood by database theorists), meaning that the data may contain redundancies (e.g., multiple terms having the same definition). It does not contain metadata about history or status.

This is NOT the same format that we use to maintain our corpus internally. That format is carefully normalized, with metadata, cross-links, and referential integrity enforced by tools.

It is also NOT the same format that similar to the format that we emit to feed MkDocs, SpecUp, and other publishing tools -- except that the data is enriched when we emit it.

<hr>

# <word or phrase you're defining>
>_In the header above, insert the word or phrase you want to add. See https://github.com/dhh1128/ctwg/blob/master/docs/term-conventions.md for conventions about capitalization, punctuation, plurals, spelling, and so forth. If your term has a short form or acronym, put the long form first, and then the short form in parentheses._

## Definition
>_What does this word or phrase mean, precisely? The first sentence of your definition acts as hovertext in hyperlinks, so make it as as pithy as possible. After that, add as much detail as you need: what criteria allow you to know for certain whether X is or is not an example of the concept? What misunderstandings need to be eliminated? If your term is a true synonym for something already defined in the glossary, just hyperlink to that definition rather than rewriting or copying it._

## Scope
>_Terms typically have a meaning only within a particular context or domain of knowledge. For example, a "run" means one thing to skiers, and quite a different thing to manufacturers of women's stockings. In a TOIP context, scopes are associated with groups -- a legal taskforce working on guardianship, or UX experts working on COVID credentials, for example. The group that "owns" a term will curate all github issues for it, set the term's status, and publish it in their glossary. See https://github.com/dhh1128/ctwg/blob/master/docs/curation.md. Different groups can define the same word or phrase in different ways (and that's fine; the system will handle it); that's why this tag is required. Associate this term with its group or scope so the right people get involved. For example: `#tswg` would associate the term with the Tech Stack Working Group._ See the various group tags in the predefined hash tags list at https://github.com/dhh1128/ctwg/blob/master/docs/hash-tags.md.

## Usage Examples
>_Optional but encouraged. Provide one or more short excerpts (or links) that show how the term has been used within the specific community of interest. These could come from a spec, github issues, whitepapers, etc._

## Tags
>_Add any additional hash tags that you feel would allow grouping in useful ways. See https://github.com/dhh1128/ctwg/blob/master/docs/hash-tags.md for details and conventions._

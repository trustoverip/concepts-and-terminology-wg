# Hash Tags

Our corpus is intended to be searchable in flexible ways.

All terms and concepts are searchable by simple full-text index. However, explicit tagging is also used. Tags identify terms by status, by language, by scope (owning group), and by arbitrary categories that CTWG knows nothing about.

### Conventions

Hash tags are written with a preceding `#`, are lower case, and are hyphenated to separate words: `#exec-committee`, `#ietf-rfc`, etc.

Hash tags are compared case-insensitive and with all punctuation removed, which means that `#ietf-rfc` and `IETFrfc` are considered equivalent.

### Predefined

* _TOIP working group tags_, matching regex `^#[a-z0-9]+wg$`: `#efwg`, `#gswg`, `#tswg`, `#ctwg`, etc. These are the only tags on TOIP's [global pre-approved tags list](https://trustoverip.github.io/deliverables/process/tags/#approved-tags) that are relevant to glossary work.
* _TOIP task force tags_, matching regex `^#[a-z0-9]+tf$`: `#acdctf`, etc.
* _Foreign group tags_, in the form `#<org>-<group>`: `#dif-keri`, `#sovrin-guardianship`, `#w3c-ccg`, etc.
* _Status tags_: `#accepted`, `#deprecated`, `#rejected`. Tooling automatically reacts to these tags appropriately, and enforces that that they are mutually exclusive.
* _Glossary identifiers_, matching regex `^#g-.+`. (These tags are maintained by the system; people don't normally have to worry about them.)
* _reserved tags_ (used by tooling for internal purposes), matching regex `^#r-.+`.
* Group-specific _custom tags_, matching regex `^#<group>-.+`. See below.

### Custom

Individual groups are encouraged to devise additional tagging schemes to decorate their data as needed. To avoid collision with predefined tags and with other groups, these tags should begin a group identifier, then a hyphen, and then a token or two of extra meaning: `#acdctf-controversial` or `#efwg-eu-jurisdiction` or `#sovrin-gf-v3`.
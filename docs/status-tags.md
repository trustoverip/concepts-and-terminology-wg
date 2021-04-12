# Status Tags

Both [term records](term-record.md) and [concept records](concept-record.md) in the corpus can be tagged for status by their owners, as follows:

* `#proposed`: Record is in its initial state.
* `#approved`: Record has been [curated](curation.md) enough to satisfy its owners as to quality and suitability for use.
* `#deprecated`: Record has been reviewed, and the judgment of its owners is that it captures a term or definition that should be discouraged. This is is not a statement about the quality of the record data, but rather about the desirability of using the term or definition it embodies.

Statuses accumulate as data iterates in a review-and-update cycle. A term may be approved, and then its record may undergo an update that updates its status to `#proposed` again. The status of a given record at a given point in time is whatever group-assigned status tag was applied most recently before that point in time; only one owner status tags is in effect any any given moment.

In addition, records are tagged by tools with the following system status:

* `#checked`: Record has passed well-formedness checks.


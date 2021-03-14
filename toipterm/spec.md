# TOIP-Term

TOIP-Term (TT for short) is a tool that helps the CTWG accomplish its mission to facilitate crisp mental models and consistent, carefully defined language in all the work activities of the foundation.

This document is a specification that describes the vision and requirements of TT.

### Scope

TT is a specialized tool for managing a terminology corpus. It does NOT replace the standard tools that directly generate any [TOIP deliverables](https://github.com/trustoverip/deliverables/). We already have tools that do that:

* Github is our tool for managing content, versioning, and ticketing.
* SpecUp is our tool for generating specifications from markdown.
* MkDocs is our tool for generating websites and similar documentation from markdown. (MkDocs generates glossaries from raw data produced by TT.)
* Members of the TOIP community are expected to use their favorite markdown editors to modify basic data.

None of these tools manage terminology. TT plugs that gap.

### People

The direct users of TT are generally CTWG members. They have learned some terminology theory and have spent the time to go through TT's learning curve. Interested community members could also learn to use TT directly.

Indirect users of TT are members of the TOIP community who want to work with terms and glossaries. They use github issues and PRs to work with data; they are not expected to need to run TT themselves, or to understand how TT works except at the highest level.

### Interfaces

TT manages a collection of markdown in a github repo. This collection is known as the __terminology corpus__. Conceptually, this set of files plays the same role as a database. We use github rather than a standard DB because we don't need many sophisticated DB features, we want the powerful versioning and branching that github supports, and we want to use github as the rest of TOIP does.

The 
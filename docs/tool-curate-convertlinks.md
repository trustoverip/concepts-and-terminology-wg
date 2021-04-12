# Curation Tool Specification: curate-transformlinks

The curation tool 'curate-transformlinks' is a script that is capable of transforming links from one format into another

Transformer links are exposed by a web service that the CTWG provides. They are in the form `https://ctwgsvc.trustoverip.org/transform?in=X&out=Y`, where `X` is a link in one of the formats documented above, and `Y` is a data format. The web service fetches the resource at X and runs a process that changes the resource's format. For example, the transformer could fetch a term from the corpus, in the internal data model, and transform it to data in the format of a published glossary entry. This can make corpus data browsable in a more friendly form, instead of a format that makes sense to terminology geeks.

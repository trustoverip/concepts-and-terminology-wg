## Term/Phrase
Tombstone

## Definition
A mark associated with a Transaction to suggest that the Transaction should no longer be returned in response to requests for read access. In the Sovrin Ledger, a Tombstone may be either a Node-Specific Tombstone or a Ledger-Wide Tombstone. Tombstones do not modify the Sovrin Ledger&mdash;only the behavior of a Node that serves data from the Ledger and that wishes to honor the Tombstone&rsquo;s semantics. In the general context of Self-Sovereign Identity, Tombstones are undesirable, as they represent a vector for censorship. However, they may be used by a specific Steward that is forced to comply with a legal demand to stop returning a specific Transaction, such as a Transaction containing data that is locally considered Personal Data or that is illegal or violates the Transaction Author Agreement in some other way. In such a case, other Stewards may not face the same legal demands and may take different action.

## Relevant Communities
* Sovrin

## Tags
```
#sovrin
```

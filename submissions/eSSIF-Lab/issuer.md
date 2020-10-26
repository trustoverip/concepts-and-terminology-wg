## Term/Phrase
Issuer

## Definition
the capability to construct Credentials from data objects, according to the content of its Principal's Issuer-Policy (specifically regarding the way in which the Credential is to be digitally signed), and pass it to the Wallet-component of its Principal allowing it to be issued.

## Short Description
An **issuer** is an (architectural) function (a functional component in the [eSSIF-Lab functional architecture](../functional-architecture)) that structures sets of (related) statements/claims (e.g. as produced by the Transaction Data Discloser) in a package, adds metadata which includes e.g. a timestamp at which this was done, ensures that it is digitally signed on behalf of its Owner (so that third Parties can prove its provenance and integrity). Another function of the issuer is to handle revocation (and (un)suspension) of credentials that it has issued. For such tasks, it relies on functions that are made available by the SSI Protocols and Crypto Layer.

## Functionality

The purpose of the Issuer component is to issue ‘credentials’, i.e. digital constructs that contain

-   sets of (related) statements or claims (e.g. as produced by the Transaction Data Discloser)
-   metadata (e.g. type of credential, date of issuing and expiration, endpoints, e.g. for revocation checking, credential definition, credential advertisements, credential enforcement policy, etc.)
-   proofs (e.g. a digital signature by which third Parties can prove its provenance and integrity.

Another purpose that an Issuer might serve is to provide a means that allows any other Agent that somehow has obtained a copy or presentation of a credential, to verify whether or not the data therein is conformant to the business administration of its Owner. We will use the term ‘revocation service’ to refer to such means. Whether or not an Issuer provides such a service, and what kind of revocation service is provided (e.g. a revocation list, an online revocation status protocol, etc.), is a decision that its Owner should make, and specify in the Issuer Policies/Preferences.

An Issuer component may issue credentials in various formats, e.g. as a Verifiable Credential (VC), an Attribute-Based Credential (ABC), an OpenID Connect/JWT token, etc. The issuing Party must specify credential-types in such a way that if the same credential is issued in different formats, it is possible for an arbitrary Verifier to determine whether or not two credentials that have different formats, are in fact the same. One way of doing this is that the Issuer generates an identifier for every credential that it constructs (before expressing it in a specific format).

After the issuer has created a credential (in one or more formats), it checks the wallet to see if it contains a credential of the same type for the same subject. If (one or more formats) are there, and their contents are the same as the newly created credential, the existing ones are revoked, deleted and/or archived/tombstoned.[^1] Then, the newly created credential is added to the wallet (in one or more formats). Thus, at any point in time, the wallet will contain an actual set of all credentials that have been issued.[^2]

--
[^1]: Tombstoning is a mechanism that is used e.g. in (distributed) ledgers that do not allow for actual deletion, such as blockchains, by marking entries in the ledger as ‘being deleted’ (i.e. adding a ‘tombstone’ to such entries).

[^2]: This allows e.g. individuals, that have an Issuer component in their SSI app, to issue self-signed credentials and provide them to verifiers that request them as usual for non-self-signed credentials.

## Relevant Communities
- eSSIF-Lab

## Tags


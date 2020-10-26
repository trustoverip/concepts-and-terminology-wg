## Term/Phrase
Credential

## Definition
data, representing a set of statements (claims, assertions), authored and signed by, or on behalf of, a specific Party.

## Short Description
A **credential** is a set of (related) Assertions (also referred to as claims, or statements), to which metadata is added (e.g. date of issuing), and a number of proofs, which typically include a  proof of provenance (i.e. proof that it was created by, or on behalf of, a specific Party), and a proof of integrity (i.e. proof that the data hasn't changed since it was issued). 

In physical credentials, such as drivers licenses and passports, proofs of integrity usually apply to the physical document itself. They come in a variety of forms, such as the structure of the paper, holograms, watermarks, or (embedded) chips. The proof of provenance usually consists of the form-format of the credential and Assertions about the document issuer.

In digital credentials, such as (digital) certificates or Verifiable credentials, the basic proofs (of provenance and integrity) usually consist of a digital signature of some kind. It therefor only 'works' for as long as the associated private/secret key actually remains a secret of the issuing Party.

Credentials whose Assertions refer to some Entity, e.g. a person, an organization, an animal, a shipment, etc. In such cases, it must be possible for arbitrary Parties to identify that Entity, and/or verify an Assertion by some other Party that identifies that Entity. To this end, credentials may contain Assertions about characteristics of that Entity, the idea being that if a Party establishes that some Entity has (a sufficient number of) these characteristics, that Entity is the one bound to the credential. Attributes typically include one or more names, various dates, a photograph, etc. Other attributes might include biometrics, RFID-codes, bar-codes, etc.

The signature on a credential may have other meanings. For example, a Party may choose to only sign the credential data if it is convinced of the truth of the statements, in which case the credential 'payload' can be seen as an excerpt of the Knowledge of that Party.

Anyone can create any kind of credential containing any statement about anyone or anything. The mere fact that a statement comes in the form of a credential (i.e. with a signature) doesn't imply that it is true.

## References:
- W3C VC [definition of 'credential'](https://www.w3.org/TR/vc-data-model/#dfn-credential)
- [W3C Verifiable Credentials Data Model](https://www.w3.org/TR/vc-data-model/)

## Relevant Communities
- eSSIF-Lab

## Tags


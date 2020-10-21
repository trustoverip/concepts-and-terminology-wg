## Term/Phrase
Identifier

## Definition
a character string that is being used for identification purposes (yet may refer to 0, 1, or more Entities, depending on the context within which it is being used).

## Short Description
An **Identifier** is a character string that is being used for identification purposes (by a specific party).[^1] This includes names and labels, as they are (obviously) used for such purposes.

Note that while an identifier is used for identification purposes, <u>this does not automatically imply that it actually identifies (singles out) anything</u>. It also depends on what [RFC 3986](https://tools.ietf.org/html/rfc3986) calls the 'scope of identification', or what [Pfitzmann and Hansen](https://dud.inf.tu-dresden.de/literatur/Anon_Terminology_v0.34.pdf) refer to as an 'identifiability set', which are relevant for explaining whether or not (and if so: what) an identifier actually identifies (singles out) in a given context. See the [Discussion](./identifier#discussion---scope-of-identification) below.

--[^1]: This is the definition of [RFC 3986](https://tools.ietf.org/html/rfc3986#section-1.1) but without the requirement of complying with URI syntax constraints. Note that there is consensus in the literature about this. For example, [(Allen, 2016)](http://www.lifewithalacrity.com/2016/04/the-path-to-self-soverereign-identity.html) defines ‘Identifier’ as “A name or other label that uniquely identifies an identity.”. [Pfitzmann and Hansen, 2010](https://dud.inf.tu-dresden.de/literatur/Anon_Terminology_v0.34.pdf) say (in footnote 57): “A name or another bit string”. The [DID-core specification](https://www.w3.org/TR/did-core/) of W3C [defines ‘decentralized identifiers’ as specializations of URIs](https://www.w3.org/TR/did-core/#dfn-decentralized-identifiers).

## Examples
The following strings are examples: 'localhost', 'https://github.com/', 'Trust over IP community', 'the mayor of New York', 'guardianship', 'my mother', 'did:sov:2wJPyULfLLnYTEFYzByfUR', 'did:sov:2wJ', 'issue #24', etc., etc.

## Purpose
Parties have a need to reason about things they know to exist, which requires them to have a conscious representation of such things, as well as the ability to identify (single out) individual Entities. One way to do that is to tag an Entity with a character string (label, name), that would then qualify as an Identifier. 

Also, Identifiers serve identification purpose in communications between different Parties, the idea being that when one Party mentions an Identifier (that identifies some entity for this Party) to another Party, the latter would be able to determine the Entity that the first is talking about. See the [Discussion](./identifier#discussion---scope-of-identification) below.

## Criterion
An **Identifier** is a character string that is being used for identification purposes by a specific Party.

## Discussion - Scope of Identification
[RFC 3986, Section 1.1.](https://tools.ietf.org/html/rfc3986#section-1.1) states _"an identifier embodies the information required to distinguish what is being identified from all other things within its **scope of identification"**_. Given that this 'scope of identification' is often disregarded in various discussions, we shortly discuss its existence(s), meaning and consequences. 

While RFC 3986 suggests that an identifier has a single scope of identification (saying '_**its** scope of identification_'), [Pfitzmann and Hansen](https://dud.inf.tu-dresden.de/literatur/Anon_Terminology_v0.34.pdf) (section 13.2) talk about what they call 'identifiability sets', i.e. sets of entities within which the identifier "can sufficiently identify" (single out) the identified entity from the others.[^2] It is a way of modeling the use of identifiers in different contexts.

:::info Editor's note
*** FURTHER TEXTS NEED TO BE ADDED *** 
:::

## Relevant Communities
- all

## Tags

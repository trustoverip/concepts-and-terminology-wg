## Term/Phrase
Guardianship Relationships (Guardian Represents a Dependent)

## Definition
While Guardianship may not be as common as Delegation, it is vital to Sovrin infrastructure because it is the mechanism by which Self-Sovereign Identity can be extended to Dependents. As shown in Figure B in Appendix B, these are Individuals who are not in a position to directly control their Private Keys via the use of an Edge Agent on a local device.This is the core distinction between Delegation and Guardianship: with the former, both Identity Owners control their own Private Keys. With the latter, the Guardian controls two sets of Private Keys&mdash;one for themselves, and one for the Dependent.This means the Guardian literally acts online as the digital representative of the Dependent. In fact, for privacy reasons, it should be possible for a Dependent to control whether it is discoverable (without the Dependent&rsquo;s and the Guardian&rsquo;s permission) that a Dependent is represented by a Guardian.This of course requires very high degree of trust between the Dependent and the Guardian&mdash;trust that must be rooted in an offline legal relationship (whether a formal legal agreement or informally under natural law) because by definition the Dependent cannot assert it cryptographically using a Credential. This form of legal responsibility is known as an information fiduciary, and it is one of the most important new areas of law associated with Self-Sovereign Identity because it is a means of extending Self-Sovereign Identity to the more than 1.1 billion people who do not currently have any form of legal identity.In some cases an Individual (such as a parent or spouse) or an Organization (such as a government, court, or NGO) may be in a position as an Identity Owner to authorize a Guardian to represent a Dependent. In that case, this Individual or Organization may issue a Guardianship Credential to the Guardian. With the appropriate permissions, the Guardian may then generate a Proof to a Verifier that the Guardian is authorized to represent the Dependent.Common examples of Guardianship relationships include:A parent acting as a Guardian for a child (Dependent) until the child reaches the age of majority. This is an example where the parent may not have any Guardianship Credential (unless such a Credential is Self-Issued by the parent).An adult son or daughter acting as a Guardian for an aging parent (Dependent). In this case the son or daughter might have a Guardianship Credential issued by a court order, government agency, or other legal authority.A government agency acting as a Guardian for a homeless person (Dependent).An NGO acting as a Guardian for a refugee (Dependent).When the Guardian is an Organization, the Organization will typically act as a Delegator to issue Delegation Credentials to its staff as Delegates to perform the actual functions of Guardianship on behalf of a Dependent. For example, an NGO that works with refugees in a developing country will issue Delegation Credentials to its staff working in the actual refugee camps. These staff members can now interact directly with refugees as Dependents, helping them take actions such as obtaining or proving Credentials for health care, immunizations, education, employment, etc.The Sovrin Governance Framework asserts that every human Dependent has the right to become an Independent if and when they have the capability, capacity, and desire to directly control their own Private Keys&mdash;and that the Guardian must support this right. For example, a refugee who repatriates to another country where he/she is able to obtain a smartphone and Internet access can request to take control of his/her Wallet and thereby gain the complete self-sovereignty of an Independent. In the case of a person who was placed under Guardianship (e.g., by a court order), there also needs to be a process allowing that person to take back control (i.e., transitioning back to an Independent), assuming the necessary requirements have been met (e.g., court order returning power of attorney).Trusteeship is a special form of Guardianship in which a Trustee is appointed by an Identity Owner to serve as a Guardian only under special circumstances, such as illness, incapacitation, or death. Trusteeship is vital to Self-Sovereign Identity management of digital estates.Note: For legal precision, the term Guardian in the Sovrin Glossary is limited to guardianship of human Dependents. However the natural language term &ldquo;guardian&rdquo; can also be applied to many types of Natural Things as &ldquo;dependents&rdquo;, particularly pets, livestock, or other animals who are dependent on humans but do not have the capacity to control their own Private Keys. The same goes for rivers, parks, or other natural monuments that require human protection. The primary difference between Natural Things as &ldquo;dependents&rdquo; and humans as Dependents is that only the latter have the capacity to become Independent. Thus Natural Things still require a Thing Controller to be responsible for their Private Keys.Digital Guardianship is such an important new area that the Sovrin Foundation is leading several initiatives in this space:The SGFWG formed a Guardianship Task Force to further develop policy recommendations and governance models for Guardians.The Sovrin Foundation formed the Global Policy Working Group to develop policy recommendations on SSI legal topics such as Guardianship and information fiduciaries.The Sovrin Foundation chartered the Identity for All Council to support the development of identification systems that serve marginalized or otherwise underserved populations worldwide, with a focus on the highest need cases of the Global South.Controller Relationships (Thing Controller Controls a Thing)A Controller relationship is the easiest one to define: it only exists between an Identity Owner and a Thing. This role is called Thing Controller because the Identity Owner completely controls the Private Key(s), Wallet(s), and Agent(s) acting on behalf of the Thing.All Things must have a Thing Controller because by definition a Thing cannot take legal responsibility for the actions of its Agent(s). This is true even in the case of Natural Things such as animals&mdash;while they may have their own natural rights (and thus may more naturally be thought of as needing &ldquo;guardianship&rdquo;), they cannot control their own Private Key(s), Wallet(s), and Agent(s).With Man-Made Things, the Thing Controller relationship depends on the type:Passive Things cannot have their own Private Keys and therefore require a Thing Controller to manage their Private Key(s), Wallet(s), and Agent(s). This is very much like the relationship of a Guardian to a Dependent except the Thing has no right to self-sovereignty (i.e., to become an Independent). This applies to any Thing that is not connected to a network or cannot send, receive, and process messages.Active Things can have their own Private Keys. Active Things must be computing devices of some kind capable of connecting to a network, with their own Private Key(s) and Wallet(s) (even if minimal). They must also operate their own Agent(s) speaking at least a subset of the Sovrin Protocol.Examples of Passive Things:Inanimate physical objects such as manufactured goods, shipping containers, buildings, and machine parts.Digital objects such as files, graphics, ontologies, and data structures.Business documents such as purchase orders, invoices, waybills, and shipping receipts.Examples of Active Things:Computing devices used by Identity Owners (e.g., smartphones, laptops, desktops, servers, printers, smart TVs, smart cars, smart watches, etc.).[5]Smart sensors used in manufacturing, shipping, transportation, etc.Drones, robots, autonomous cars, and other computing devices capable of movement.A critical point is that, even in the second case when the Thing has its own keys, the Thing Controller is always in ultimate control of the Thing. Without diving deep into Blade Runner-style arguments about AI (Artificial Intelligence) and free will, the actions of the Thing are always the responsibility&mdash;practically, legally, or ethically&mdash;of the Individual or Organization acting as the Thing Controller.

## Relevant Communities
* Sovrin

## Tags
```
#sovrin
```
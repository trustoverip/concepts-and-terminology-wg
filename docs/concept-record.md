# Concept Record

A __concept record__ is a markdown-formatted data structure that fully describes one concept. It is typically hyperlinked to one or more term records that label or name the concept, although orphaned concepts are possible. See the [document about term records](term-record.md) for an explanation about why this structure was chosen.

## Naming

A concept record lives in a `/concepts` folder. It is named according to the convention `<number>-<term hint>.md`, where `<term hint>` was a familiar term for the concept at the time the record was created. The filename is chosen by a tool, not humans. A concept identifier begins with a number to make it clear that the concept, not the word, is what the record describes -- but it should also be at least moderately human-friendly, because it will be used in hyperlinks. This is the reason for the term hint portion. The filename should remain stable across evolutions of the content, if at all possible.

Internally, the file is divided into sections using markdown headers. Each section of the file corresponds to a field in the concept record.

## Fields

A field is said to "contain" whatever content falls beneath its header.

The only top-level header in the file (preceded by a single `#`) is the concept identifier itself. All other fields are delimited by headers preceded by `##`; additional levels of header represent substucture inside the field in question.

As far as automation is concerned, the order of fields does not matter. However, preference is to organize the file for human readability, with the top-level header containing the term value as the overall title at the top.

### Concept Identifier
This required header acts as a title for the record. It is a single line that begins with the word "Concept", then a space, and then the identifer value. Example:

```markdown
# Concept 173-gov-fw
```

The identifier value is only the second token. This token in the header should match the filename itself; that is, a header that contains `# Concept 173-gov-fw` should appear in a file named `/concepts/173-gov-fw.md`. If there is any discrepancy between the filename and this field, the filename governs, because this field is only a convenience for human readers.

The ID for a concept record is referenced from the [Concept ID field in a term record](term-record.md#concept-id), where it functions like a foreign key in a database record.

### Definition
This required field should be a sentence or paragraph that describes the concept in question. The first complete sentence in the definition is extracted by automation as hovertext for use in some artifacts that embed inline hyperlinks to terms. Additional sentences might expand or clarify -- but should not replace the[Criteria](#criteria) and [Exposition](#exposition) fields.

Definitions are likely to build upon other terms; they often use them in the running text. These terms should be referenced as [local hyperlinks](hyperlinks.md#local-links). Example:

```markdown
## Definition
A piece of software and/or hardware that interacts with other [sovereign entities](sovereign-entity.md) in the ecosystem on behalf of its [principal](principal.md).
```

### Criteria
This optional field contains a markdown block (a bulleted list, a table, or sub-headings, for example) that enumerates defining characteristics of the concept. By reading the criteria, someone should be able to say with confidence whether the idea in their mental model is or is not fully aligned with the concept. Example:

```markdown
## Criteria
When we use the term [agent](agent.md) in the SSI community, we more properly mean an agent of [self-sovereign identity](ssi.md). This means something more specific than just a "user agent" or a "software agent." Such an agent has three defining characteristics:

1. It acts as a [fiduciary](https://en.wikipedia.org/wiki/Fiduciary) on behalf of a single [identity owner](../../sovrin/terms/identity-owner.md) (or, for agents of things like IoT devices, pets, and similar things, a single controller).
2. It holds cryptographic keys that uniquely embody its delegated authorization.
3. It interacts using interoperable [DIDComm](../../DIF/terms/didcomm.md) protocols.
```

### Exposition
This optional field is like an extended Wikipedia article on the concept. Diagrams, explanations, extended commentary, and other rich data can be included, as long as it will all be interpreted by a markdown processor as being "inside" the Exposition section. 

### Concept Status
This field has the same format, meaning, and examples as the [Status field in a term record](term-record.md#status) -- except that it describes the status of a concept instead. (The status of a term and its associated concept can evolve indepedently.)

### Concept Tags
This field has the same format, meaning, and examples as the [Tags field in a term record](term-record.md#tags) -- except that it tags a concept instead.

### Concept Notes
This field has the same format, meaning, and examples as the [Notes field in a term record](term-record.md#notes) -- except that it comments on a concept instead.


---
Scope: Single component (any viewpoint)
Phases: Conceptual design 
Roles: Architect (different specializations)
Activities: Architecture design, component modeling 
Abstraction/Refinement Level: Technology-/platform-independent
---

[Git Pages Home](https://socadk.github.io/design-practice-repository) ---
[Artifacts Overview](https://socadk.github.io/design-practice-repository/artifact-templates)


Artifact/Template: *Components, Responsibilities, Collaborations (CRC) Card*
----------------------------------------------------------------------------
<!--Alternate names or candidate names) can be listed as "Also known as " here.-->

> *A CRC card describes logical design building blocks on an intermediate level of detail and refinement.*

### Motivation (Addressed Information Need) 

A notation that is well suited for *candidate* component modeling is the *CRC Card* format. CRC stands for Components, Responsibilities, Collaborations (CRC) here; you also find Classes or Candidates as the meaning of the first 'C'. CRC cards allow designers to strike a balance between being precise and being consumable; code interfaces often would be too detailed and boxes-and-arrows diagrams too abstract (depending on the modeling goals and information needs in a given context).


### Usage (Produced and Consumed When)
<!--AA/AS/AE, must identify the producing role and the target audience-->
 
CRC cards primarily serve as specification and documentation tool during [Architecture Modeling](../activities/DPR-ArchitectureModeling.md). Moreover, the cards can support decision-making during component realization, starting with a "make or buy/rent" decision: 

* Buy, build, or rent (a cloud service) software with the desired capabilities?
* Use a custom-off-the-shelf software package, commercial middleware, or open source software? 
* Can a cloud service or an operating system feature (such as a storage offering or a job scheduler) fulfill the responsibilities?

Another usage scenario for CRC cards is an interactive workshop or "design thinking" format, sometimes up to a role-playing game: Each participant takes the role of an object/a candidate component (each represented by one CRC card). A ball representing business event and/or program control flow then is thrown around to learn about (and design) data flow, message formats, (a)synchrony, etc. The participants record the resulting collaborations and responsibilities on their CRC cards. These initial versions can then be put in a collaboration tool for further processing--or <!-- note "--" works, HTML mdash too. see https://leanpub.com/markua/read#charsub --> serve as graphical notes only, accompanying the textual ones (see [this blog post](https://ozimmer.ch/authoring/2020/07/02/ReviewAndMeetingMarkup.html)) from the workshop.


### Template Structure and Notation(s)

An annotated template (with teaser questions) is: <!-- resolution not great in PDF. decision: leave the powerpoint tables as they are right now and try to find a better solution for all of these in a future release. -->

![CRC Card Notation Explained](./images/ZIO-CRCCardNotationExplained.png)

*Discussion:* The template and the teaser questions deviate from the original CRC format a bit (applying our method engineering rule "do not follow templates blindly, but adopt them to your needs"). In the Responsibilities cell, functions, (externally visible) data, and qualities are mentioned; in the Collaborations cell, both inbound and outbound dependencies can be listed. Note that there is an extra cell asking for previous experiences and realizations with the candidate component (in support of the decision-making use case of CRC cards).

### Example(s)

This is an example of a filled out card (an entire layer is described here, rather than a single component in that layer):

<!-- IH CE: two more comments on figure -->

![CRC Card Notation Example](./images/ZIO-CRCCardNotationExample.png)

### Tools
<!--From AA, should call out what one needs to be able to do on beginner, intermediate, advanced level; as a team -->
Any tool that supports table layouts (preferably with the option to merge cells) can be used. Online and offline whiteboards will do too. 

Team [wikis](https://en.wikipedia.org/wiki/Wiki) or [Markdown tables](https://www.markdownguide.org/extended-syntax/) are additional options.


### Hints and Pitfalls to Avoid (Common Pitfalls)

To be able to serve their purpose, CRC cards should be expressive but also easy to understand:

* Names should communicate what application/architecture are about.
    * [Metaphors](https://www.agilealliance.org/resources/videos/making-metaphors-that-matter/) can make cards expressive and easy to remember, but must be chosen wisely. How will key stakeholders react to them? For instance, sports analogies might not work equally well in all geographies. <!-- e.g., baseball, cricket, handball -->
    * Prefer strong semantics and domain-specific vocabulary, e.g. "Web Shop" over "Client".
    * A common naming scheme is `domain concept + architectural role/pattern`.
* Value consistency (no contradictions) over completeness.
    * Good component descriptions should be SMART (like goals and NFRs).
    * Each outgoing collaboration relationship should correspond to an incoming one elsewhere and vice versa (a service consumer needs a provider). Look for it in other CRC cards (or the API contracts of systems in the context of the one under construction).
    * Sunny day (happy path scenarios) and rainy days (error and edge cases) should be taken into account when assigning responsibilities.
* Model on same level of detail on all cards and find a medium ground.
    * Too precise specifications are hard to implement and change.
    * Too vague ones do not add value, implementations are hard to integrate, and the resulting architecture is difficult to validate.

Very busy cards might indicate violations of the single responsibility principle; a large number of nested collaboration chains might indicate an undesired amount of coupling.

### Origins and Signs of Use
<!-- From PLOPs and from AA-->
The original [Class, Responsibilities, and Collaborators (CRC) cards](http://agilemodeling.com/artifacts/crcModel.htm) were invented by Ward Cunningham (who also invented Wikis and came up with the Technical Debt metaphor) and published in his [OOPSLA 1989 paper](http://c2.com/doc/oopsla89/paper.html). They were used for object design and popularized by Rebecca Wirfs-Brock in the Responsibility-Driven Design (RDD) method (@WirfsBrock:2002).

On the architectural level, they are used in [Volume 1 of the POSA book series](https://www.wiley.com/en-us/Pattern+Oriented+Software+Architecture%2C+Volume+1%2C+A+System+of+Patterns-p-9780471958697) (@Buschmann:1996). See this [blog post by Michael Stal from 2006](http://stal.blogspot.ch/2006/12/architects-toolset-crc-cards.html) for background information and rationale. Olaf Zimmermann has been teaching them this way in his ["Application Architecture" lecture at HSR/OST](https://www.ifs.hsr.ch/Olaf-Zimmermann.11623.0.html?&L=4) since 2013; Michael Keeling features them as Activity 13 in ["Design It"](https://pragprog.com/titles/mkdsa/design-it/) (@Keeling:2019).

Usage is straightforward to spot; just look for the keywords "responsibilities" and "collaborations" (or "collaborators") and a table format that resembles the one introduced above (note that the section on candidate implementation technologies and known uses is optional).


### Related Artifacts and Practices (incl. Alternatives)
CRC cards can support, and result from, [Architecture Modeling](../activities/DPR-ArchitectureModeling.md) activities. The stated responsibilities should trace back to requirements, expressed as [User Stories](DPR-UserStory.md) and/or [Use Cases](DPR-UseCase.md) and [Non-Functional Requirements (NFRs)](../activities/DPR-SMART-NFR-Elicitation.md).

Notes and comments in UML and other modeling tools as well as plain text descriptions can be used alternatively, or formatted in such a way that the responsibilities and collaborations come out clearly.

Interface-Responsibility-Interactions (IRI) cards are a similar concept, but applied to interfaces (@Pugh:2006).


### More Information
The [RDD tutorial](http://www.wirfs-brock.com/PDFs/A_Brief-Tour-of-RDD.pdf) explains the *original*, class-level version and provides additional examples.

Gregor Hohpe explains the difference between "scope" and "abstraction" in his blog post ["The Architect’s Path (Part 1 - Model)"](https://architectelevator.com/architecture/architect-path/). CRC cards have a narrow scope and a conceptual level of abstraction (bottom right quadrant).

RDD and many other methods are compiled and commented on in ["Driven by Acronyms"](https://medium.com/olzzio/driven-by-acronyms-e1568b73e4aa), one of Olaf Zimmermann's story posts on Medium.


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): CRC Card"
author: Olaf Zimmermann (ZIO)
date: "03, 29, 2021"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

<!--
# References
[C-99]: # (Comment: References will be added here automatically when using -bibliography option of pandoc command)
-->
---
Scope: From system to components to classes
Phases: Analysis, design 
Roles: Domain expert, designer 
Activities: Object-oriented analysis and design, tactic DDD 
Abstraction/Refinement Level: multiple 
---


Artifact/Template: *Domain Model*
---------------------------------

### Motivation (Addressed Information Need) 
A domain model shows the essential/most important/core business concepts of an application and how these concepts relate to each other. A domain model helps domain experts (a.k.a. business analysts), architects, developers and all other project stakeholders to establish (and agree on) a common understanding of the business problem domain, which is an important milestone en route to an appropriate service design.

In the context of [stepwise API and service design](../activities/SDPR-StepwiseServiceDesign.md), a domain model is instrumental to identify [candidate endpoints](SDPR-CandidateEndpointList.md) for the provider-side service layer. 


### Usage (Produced and Consumed When)
Depending on the maturity of the design and the phase/stage of the project, domain models can be very minimal and only feature business concepts as classes and relationships. More elaborate domain models might include behavior in the form of method names or even complete method signatures and data attributes, domain events and business rules (constraints, invariants).

Domain models are usually created early in the project and are refined continuously throughout the project. 


### Template Structure and Notation(s)
Martin Fowler distinguishes between simple domain models, that "look very much like the database design" and rich domain models, which use "inheritance, strategies, and other @Gamma:1995 patterns, and complex webs of small interconnected objects" (in @Fowler:2002). 

UML class diagrams are the most commonly used notation for domain models. Keep in mind that a domain model does not need to specify every detail of the resulting implementation, but should show the most important concepts and give the reader an understanding of the code. 

![](/artifact-templates//images/Domain-Model-Template.png)


### Example(s)
A minimal domain model can start with just the classes and their relations. For example, here is a very simple domain model for an e-commerce site:

![](/artifact-templates//images/Domain-Model-Simple.png)

This can then be fleshed out with more details, for example more specific relations, attributes, and methods:

![](/artifact-templates//images/Domain-Model-Elaborate.png)

In a next step, the method names could be turned into full method signatures with fully typed parameter names and return values.

### Tools
Pen and paper or a whiteboard are enough to get started on a simple model. The examples above were generated using [PlantUML](https://plantuml.com/class-diagram), a textual DSL for various kinds of diagrams.

[Context Mapper](https://contextmapper.org/docs/tactic-ddd/), a DSL and tool for strategic and tactic DDD, embeds Sculptor. The Sculptor DSL can express domain models. UML profiles exist as well.


### Hints and Pitfalls to Avoid

* A domain model is not a data-centric [Entity-Relationship (ER) Diagram](https://www.lucidchart.com/pages/er-diagrams), even if these two artifacts might look very similar at the first glance. For instance, a domain model does not contain any notion of primary keys, whereas the typical ER diagram does not use inheritance. Domain models are supposed to feature attributes *and* operations. Martin Fowler warns about such [Anemic Domain Models](https://www.martinfowler.com/bliki/AnemicDomainModel.html) in his bliki.
* A domain model may serve as an early check to see whether the desired functionality can be implemented, e.g. by making sure that all required relationships are present.
* The refinement of the domain model should not be forgotten as more use cases or user stories are implemented and the design evolves (but often is).


### Origins and Signs of Use
When UML-based methods and their predecessors are applied, chances are that a domain model is present:

* ["UML Components"](https://www.pearson.com/us/higher-education/program/Cheesman-UML-Components-A-Simple-Process-for-Specifying-Component-Based-Software/PGM319361.html) by John Cheesman and John Daniels has a *business type model* artifact (which is an early OOA domain model).
* Craig Larman's book ["Applying UML and Patterns"](https://www.craiglarman.com/wiki/index.php?title=Book_Applying_UML_and_Patterns) covers OOA and OOD. 
* [Tactic DDD](../activities/DPR-TacticDDD.md) can be seen as domain modeling "on stereoids".


### Related Artifacts and Practices (incl. Alternatives)

* ER diagrams from [Structured Analysis (SA)](https://en.wikipedia.org/wiki/Structured_analysis) can be used alternatively.
* Informal glossaries of the project's ubiquitous language can feed the domain model, or be extracted from it.
* Code-level class diagrams might use the same notation, but have a different purpose. 


### More Information
While often associated with object oriented languages, domain modeling can also be used in functional programming languages. See Debasish Ghosh's book ["Functional and Reactive Domain Modeling"](https://www.manning.com/books/functional-and-reactive-domain-modeling). 


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Domain Model"
author: Mirko Stocker (STX), Olaf Zimmermann (ZIO)
date: "02, 26, 2021 (Source: Project DD-DSE)"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

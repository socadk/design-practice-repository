---
Scope: From system to components to classes
Phases: Analysis, design 
Roles: Domain expert, designer 
Activities: Object-oriented analysis and design, tactic DDD 
Abstraction/Refinement Level: multiple 
---


Artifact/Template: *Domain Model*
---------------------------------

> *An analysis-level domain model captures domain concepts and their relations from an external, non-technical point if view. A design-level domain model represents design solutions for the concepts in the analysis model (including logic/behavior and data/structure).

### Motivation (Addressed Information Need) 
A domain model shows the essential (most important, core) concepts an application deals with, and how these concepts relate to each other. Such domain model helps domain experts (a.k.a. business analysts), architects, developers, and all other project stakeholders to establish a common understanding of the business problem at hand, which is an important milestone en route to an appropriate software design. Examples of such domains are business sectors such as finance, insurance, and telecommunications as well as somewhat more technical genres such as online shopping, Internet of Things (IoT) and social networks.

In the context of [stepwise API and service design](../activities/SDPR-StepwiseServiceDesign.md), a domain model is instrumental to identify [candidate endpoints](SDPR-CandidateEndpointList.md) for the provider-side service layer. 


### Usage (Produced and Consumed When)
Depending on the maturity of the design and the phase/stage of the project, domain models can be very minimal and only feature business concepts as classes and relationships. More elaborate domain models might include behavior in the form of method names or even complete method signatures and data attributes, domain events and business rules (constraints, invariants).

Domain models are usually created early in the project and are refined continuously throughout the project. They complement and glue requirements specifications and architectural models.


### Template Structure and Notation(s)
Martin Fowler distinguishes between *simple* domain models, that "look very much like the database design" and *rich* domain models, which use "inheritance, strategies, and other @Gamma:1995 patterns, and complex webs of small interconnected objects" (@Fowler:2002). UML class diagrams are the most commonly used notation for domain models. 

Note: A domain model does not have to specify every detail of the resulting implementation, but should show the most important concepts and give the reader an understanding of the code. 

<!-- ZIO4STX: source? add relation from class to class? -->
![Domain Model Template](/artifact-templates/images/Domain-Model-Template.png)


### Example(s)
A minimal domain model can start with just the classes and their relations. For example, here is a very simple domain model for an e-commerce site:

![Simple Domain Model](/artifact-templates//images/Domain-Model-Simple.png)

This can then be fleshed out with more details, for example more specific relations, attributes, and methods: <!-- ZIO4STX: show filled out diamond, physical containment, discuss it a bit? -->

![Elaborate Domain Model](/artifact-templates//images/Domain-Model-Elaborate.png)

In a next step, the method names could be turned into full method signatures with fully typed parameter names and return values.

### Tools
Pen and paper or a whiteboard are enough to get started on a simple model. The examples above were generated using [PlantUML](https://plantuml.com/class-diagram), a textual DSL for various kinds of diagrams. UML profiles exist as well and are supported in UML tools such as Sparx Enterprise Architect.

[Context Mapper](https://contextmapper.org/docs/tactic-ddd/), a DSL and tool for strategic and tactic DDD, embeds Sculptor. The Sculptor DSL can express domain models. 


### Hints and Pitfalls to Avoid

* A Domain Model is not a data-centric [Entity-Relationship (ER) Diagram](https://www.lucidchart.com/pages/er-diagrams), even if these two artifacts might look very similar at the first glance. For instance, a domain model does not contain any notion of primary keys, whereas the typical ER diagram does not use inheritance. Domain models are supposed to feature attributes *and* operations. Martin Fowler warns about such [Anemic Domain Models](https://www.martinfowler.com/bliki/AnemicDomainModel.html).
* A Domain Model may serve as an early check to see whether the desired functionality can be implemented, for instance by making sure that all required relationships are present.
* The refinement of the Domain Model should not be forgotten as more use cases or user stories are implemented and the design evolves (but often is). A model, diagram, or document that is not up to date may cause unnecessary confusion, for instance when the cardinalities (multiplicities) of relationship advance from 1:1 to 1:n and then n:m over time.

*Note:* While often associated with object oriented languages, domain modeling can also be used in functional programming languages. See Debasish Ghosh's book ["Functional and Reactive Domain Modeling"](https://www.manning.com/books/functional-and-reactive-domain-modeling).

### Origins and Signs of Use
When UML-based methods and their predecessors are applied, chances are that a domain model is present:

* ["UML Components"](https://www.pearson.com/us/higher-education/program/Cheesman-UML-Components-A-Simple-Process-for-Specifying-Component-Based-Software/PGM319361.html) by John Cheesman and John Daniels has a *business type model* artifact (which is an early OOA domain model).
* Craig Larman's book ["Applying UML and Patterns"](https://www.craiglarman.com/wiki/index.php?title=Book_Applying_UML_and_Patterns) covers OOA and OOD. 
* [Tactic DDD](../activities/DPR-TacticDDD.md) can be seen as domain modeling "on stereoids".


### Related Artifacts and Practices (incl. Alternatives)

* ER diagrams from [Structured Analysis (SA)](https://en.wikipedia.org/wiki/Structured_analysis) can be used alternatively.
* Informal glossaries of the project's ubiquitous language can feed the domain model or be extracted from it (Context Mapper provides a Freemarker template for this purpose, for instance).
* Code-level class diagrams might use the same notation, but have a different purpose. 


### More Information

Several books were listed under "Origins and Signs of Use" above.

An end-to-end design demo that includes some OOAD and Tactic DDD is describes in this [Medium story](https://medium.com/olzzio/domain-driven-service-design-with-context-mapper-and-mdsl-d5a0fc6091c2).


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Domain Model"
author: Mirko Stocker (STX), Olaf Zimmermann (ZIO)
date: "03, 30, 2021"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

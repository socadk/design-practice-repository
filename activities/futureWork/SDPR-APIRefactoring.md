---
Scope: Service layer
Phases: "Design, development, maintenance"
Roles: "API product owner, integration architects, API designers"
Input: "(Non-)functional requirements, API Description"
Output: "API Description and its provider-side implementation"
Abstraction/Refinement Level: Both conceptual (platform-independent) and technical (platform-specific)
---

<!-- Word budget: 1000-1500 (3-5 A4 pages); the practice descriptions should be readable in 5 to 10 minutes (expert vs. novice reader) -->

Activity/Technique: *API Refactoring*
-------------------------------------
<!-- Alternate names or candidate names) can be listed as "Also known as" here. -->
also known as: Interface Refactoring

<!-- *Note to method engineers):* Terms from Agile Alliance template appear in parenthesis in headings (if it makes sense) -->

### Context
<!-- Keywords, preconditions (input artifacts), performing role -->

From <https://interface-refactoring.github.io/>: "Refactoring refers to the practice of improving a software system without changing its external/observable behavior. Think of cleaning up a piece of code or putting finishing touches on a design, like making sure all names are well-chosen or breaking up a long piece of code into several parts. The purpose of refactoring can also be the alignment of the software with a design pattern."


### Goal and Purpose (When to Use and When not to Use)
<!-- TODO, can be a user story, must identify the performing role and the target audience (producer, consumer) -->

> *As an API developer, I would like to change the operation signatures in one or more API endpoints so that the API performs better at runtime and/or is easier to understand and maintain.* 

From SummerSoC paper: "An API refactoring evolves the remote interface of a system without changing its feature set and semantics to improve at least one quality attribute."

### Instructions (Synopsis, Definition)
<!-- What to do, artifact to produce; minimum, medium maximum diligence/verbosity (?) -->  

A first catalog of API refactorings is available:

![](https://interface-refactoring.github.io/plantuml-images/27fe7f8c3bca9cd284740db77286c0d17304598e.svg) <!-- TODO miro visual of IRC -->

Having applied a refactoring, always:

*    Test the updates
*    Extend the API description
*    Let clients know about the change
*    Leverage logging and other observation instruments to monitor the effectiveness of the refactoring (as well as negative side effects)

### Example(s)
<!-- Must be concrete, ideally give three ones, one for each verbosity/fidelity level basic, medium, full -->

We do not replicate the many examples given online here, but refer you to the IRC website: 

* https://interface-refactoring.github.io/refactorings/introducedatatransferobject
* https://interface-refactoring.github.io/refactorings/introducepagination
* https://interface-refactoring.github.io/refactorings/segregatecommandsfromqueries

The bog post ["Story-Driven Service Design: From Feature Request to Minimum Viable API Product"](https://ozimmer.ch/practices/2022/01/20/StoryDrivenServiceDesignDemo.html) provides a larger example that features several refactorings, as well as other transformations, in action.

### Benefits vs. Effort (Expected Benefits, Skill Levels)
<!-- From AA, should call out what one needs to be able to do on beginner, intermediate, advanced level; as a team -->

Just like code refactoring, API/interface refactoring causes effort. It removes [design smells](https://interface-refactoring.github.io/refactorings/by-smells-drivers) and reduces technical debt; this metaphor is often used to justify the effort.


### Hints and Pitfalls to Avoid (Common Pitfalls)
<!-- See ART, don’t overdo etc. -->

* Try to refactor in backward-compatible ways if at all possible; apply semantic versioning if not.
* Measure the effect of a refactoring, for instance by load testing before and after its application.
* DO not forget to also refactor the API implementation if that is needed to avoid mismatches between service layer and business logic layer.


### Origins and Signs of Use
<!-- From PLOPs and from AA -->
Much has been written about refactoring in programming languages — the term originates there. Bill Opdyke wrote a PhD thesis on the subject, and the term has been popularized by Martin Fowler — but the concept and the activity have broader appeal. Architectural refactoring aims at improving the future evolvability of the software on the architecture level. This is also the level where this catalog is aimed at. One reason for refactoring is to improve the future evolvability, but refactoring can target other non-functional requirements as well.

API refactoring is our fusion of code refactoring and API refactoring.


### Related Content
<!-- in DPR/OLAF and elsewhere -->

* Stepwise Service Design
* Candidate Endpoint List, Refined Endpoint List 
* API Description 

#### Performing Roles and Related Artifacts (Synopsis)

Integration Architect, Service Designer, API Developer 

#### Practices and Techniques (Refinements, Guides)

Having applied a refactoring, always apply the TELL steps (Test, Explain, Let Know and Learn):

* Test the updates (locally and end-to-end),
* Explain the new design in the API description (including version number),
* Let API clients and other stakeholders know about the change (is it compatible?), and
* Learn about the effectiveness of the refactoring (as well as negative side effects) with logging and other observation instruments.

The [MDSL Tools](https://microservice-api-patterns.github.io/MDSL-Specification/tools) implement many of the IRC entries. See [this page](https://microservice-api-patterns.github.io/MDSL-Specification/soad#transformations-related-to-patterns-and-refactorings).

### More Information 
<!-- Further Reading, Academic Publications) -->

See <https://interface-refactoring.github.io/> and <https://microservice-api-patterns.org/>.

<!--
* Summer SoC paper (when out)
* ARC papers
* refactoring.guru website
* M. Fowler book (from IRC bibtex)
-->

### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Practice/Technique API Refactoring"
author: Olaf Zimmermann (ZIO), Mirko Stocker (STX)
date: "02, 23, 2022 (Source: Project QDAR)"
copyright: Copyright 2021-2022 Mirko Stocker and Olaf Zimmermann. All rights reserved.
license: Creative Commons Attribution 4.0 International License
```



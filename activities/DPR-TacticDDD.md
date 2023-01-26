---
Scope: Entire system, business logic layer
Phases: Throughout project/product development
Roles: Domain experts, entire development team
Input: Functional (and non-functional) requirements
Output: Domain model, DDD pattern instances
Abstraction/Refinement Level: Conceptual
---


Activity/Technique: *Tactic(al) Domain-Driven Design (DDD)*
------------------------------------------------------------
also known as: Pattern-Oriented Object-Oriented Analysis and Design (OOAD)


### Context
*Domain-Driven Design (DDD)* proposes techniques and patterns to deal with the intrinsic complexity in software development, both organizationally and technically. Key DDD themes are business-orientation, domain modeling, and knowledge reuse both on the strategical (i.e., long term, cross-project) and on the tactical (i.e., application, project, product) level. 


### Goal and Purpose (When to Use and When not to Use)

> *As a business analyst (domain expert), I want to understand domain concepts driving and underlying requirements so that the emerging design is grounded in actual requirements.* 

> *As a domain-driven designer, I want to design software concepts to address and satisfy requirements so that the stakeholder wants and needs are met in an understandable and traceable way.*

Tactic (or tactical) DDD can be seen as [Object-Oriented Analysis and Design (OOAD)](https://en.wikipedia.org/wiki/Object-oriented_analysis_and_design) done well, putting emphasis on the business logic in layered architecture and elaborating upon the [Domain Model](https://martinfowler.com/eaaCatalog/domainModel.html) pattern in Martin Fowler's "Patterns of Enterprise Application Architecture" (@Fowler:2002). The goals of OOAD and Tactic DDD are:

* Establish a [ubiquitous language](https://martinfowler.com/bliki/UbiquitousLanguage.html) shared with users, other external stakeholders, and within the team
* Find out what to implement (analysis)
* Define attributes and methods that keep the connection to the analysis results (design); both data structures and behavior are in scope <!-- storage units, processors --> 

*Tip:* There is a deliberate difference between analysis ("what are we building?") and design ("how will we deliver the 'what'"?), explained in this [tutorial](https://www.tutorialspoint.com/object_oriented_analysis_design/ooad_quick_guide.htm). OOA and OOD can and should be performed hand in hand, and DDD supports both OOA and OOD. The transition should be seamless, hence a common set of patterns and notations is used for the incremental and iterative refinement of both analysis and design. <!-- twin peaks model -->


### Instructions (Synopsis, Definition)
Key patterns in Tactic DDD are (@Evans:2003):

* Entity and Value Object
* Aggregate 
* Service (domain level; not to be confused with Web services, microservices and other remoting concepts)
* Domain Event
* Factory and Repository (not that patterns of these names also appear in other pattern catalogs and languages, for instance "Design Patterns" (@Gamma:1995))

<!-- 
The original DDD book @Evans:2003 provides this pattern map for tactic DDD (showing more patterns):
![Pattern Map for Tactic DDD (Eric Evans)](/activities/images/EE-TacticDDDPatternMap.png)
-->
The following domain model for Tactic DDD gives an overview of the patterns in it:

![Tactic DDD Concepts and their Relations](/activities/images/TacticDDDMetaModel.png) <!-- Redone in PlantUML to get a more unified style with the example below. -->

Aggregates are object clusters serving as storage units, preserving consistency invariants (e.g., an order and its items). They have a single *Root Entity* (also called Aggregate Root) that may link to additional entities. All entities and value objects in an Aggregate are stored in and loaded from the database together.[^101] Entities have an identity and a life cycle; Value Objects do not and are immutable. Services contain logic that cannot be easily assigned to a single Entity.

[^101]: In ["The Anatomy Of Domain-Driven Design"](https://leanpub.com/theanatomyofdomain-drivendesign), Scott Millet and Samuel Knight define Aggregate like this: "A single object graph may closely relate to the real domain, but it does not make for an effective model. Treating the model as a single consistency boundary in a collaborative domain can lead to conflict for changes that are completely unrelated. [...] Therefore: Decompose large objects structures into smaller objects groupings called aggregates which are based around invariants (business rules). An aggregate is a unit of consistency ensuring transactional boundaries are set at the right level of granularity to ensure a usable application by avoiding blocking at the database level."

The following CRC card outlines the responsibilities and collaborations of Aggregate Roots (i.e., the root entities in an Aggregate):

![CRC Card for DDD Aggregate](/activities/images/ZIO-AggregateCRC.png)

**Aggregates and Business Rules.** An Aggregate in DDD is responsible for business rule enforcement across entities (single entity rules can be enforced by entity). But what is a business rule? The term has (at least) two meanings:

1. Executable part of the business logic (an algorithm) that is not expressed as sequence of statements, but declaratively. 
2. A statement or condition about the domain model, its elements, and their relationships that always has to be true (i.e., be invariant) to preserve data consistency and ensure accuracy of processing. For instance, the sum of all withdrawals is equal to the sum of all payments; the total amount of player salaries on any sports team in the league does not exceed xM USD; all orders point to customers that actually exist in the real world.

<!--
More examples:

Physical containment relationship 

* No order without an existing customer
* When A changes, B also has to change 

Number calculations/value ranges 

* Total (sum) of X must not exceed value Y
* VAT calculation must match product type 
* Sum of all account transfers must always be 0

Accounting and non-repudiation 

* All calls are billed
* All access attempts are logged 
-->

The first meaning of the term is not in focus here, but can be modeled as Entity operations and services. The rules in the second meaning (constraint, invariant) can and should be enforced by DDD Aggregates.

**Modeling Steps**. In tactic DDD, an already existing OOA/OOD [Domain Model](../artifact-templates/DPR-DomainModel.md) is refined to call out instances of these patterns; alternatively, the domain-driven design can also be distilled from the functional requirements directly (possibly via [Subdomains](https://contextmapper.org/docs/subdomain/), another DDD pattern):

1. Distinguish stateful Entities from immutable, possibly transient Value Objects; expose cross-cutting or supporting code that does not fit into any class in Services (start withing a [Transaction Script](https://martinfowler.com/eaaCatalog/transactionScript.html) per user story or use case).
2. Group output of Step 1 into Aggregates (storage units, object clusters) and let Aggregates communicate state changes via Domain Events. Watch out for entities that share a common life cycle; for instance, an order physically contains order items that have to be deleted when the containing order is deleted. It probably makes little sense to implement such orders and their items in two separate Aggregates.
3. Add a Repository for each Aggregate (to implement lifecycle management) and add Factories as needed (generally speaking, never apply a pattern just because it exists; there has to be a solid business-level or technical justification for its use).

<!-- Source: https://miro.com/app/board/o9J_lM74VxE=/ Select the frame -> export as image -->
![Modeling Steps From Analysis to Design](/activities/images/DPR-TacticDDDSteps.jpg)

<!-- Review [FB] on figure: 

* add discussion of role and imporance of domain events; talk about relation between E and VO, few and bidirectional rel. (?) 
* Number figures and use numbers in text 

ZIO4STX pls take over 

STX4ZIO: I've added the three steps to the figure.

-->

### Example(s)
The Context Mapper website provides a number of [DDD examples](https://contextmapper.org/docs/examples/). A model of the [Cargo example](https://github.com/ContextMapper/context-mapper-examples/tree/master/src/main/cml/ddd-sample) from the original DDD book (@Evans:2003) can be found in its examples repository.

The main Aggregate of the Cargo sample application is shown in the following figure. It comprises a `Cargo` Entity that aggregates different Value Objects. You might be wondering how `Delivery` can be a Value Object with that many attributes indicating some kind of lifecycle (various status attributes, current voyage, last event). If we look at [the implementation](https://github.com/citerus/dddsample-core/blob/master/src/main/java/se/citerus/dddsample/domain/model/cargo/Delivery.java), we can see that it is in fact implemented as an immutable class that creates a new `Delivery` instance when changes are made.

![Example of a DDD Aggregate in Cargo Case Study](/activities/images/CM-TacticDDDCargoAggregate.png)

<!-- Review [FB] busy, (too) rich example -->
<!-- png created from puml source (had to add a blank to some relationship arrows) in "models" folder -->

[Context Mapper](https://contextmapper.org/), a DSL and tools for strategic and tactic DDD, provides two model transformations that support the transition from user stories (or use cases) to DDD Subdomains and then Bounded Contexts (a [Strategic DDD](DPR-StrategicDDD.md) pattern) containing Aggregates, Entities, and Value Objects. An example is walked through [here](https://contextmapper.org/docs/rapid-ooad/) and a comprehensive [end-to-end-demo](https://medium.com/olzzio/domain-driven-service-design-with-context-mapper-and-mdsl-d5a0fc6091c2) features Tactic DDD and Context Mapper in combination with service domain-specific languages and tools.


### Benefits vs. Effort (Expected Benefits, Skill Levels)
According to Martin Fowler in @Fowler:2002, investing in a [Domain Model](../artifact-templates/DPR-DomainModel.md) makes sense if the business logic is inherently complex. 

We would argue that there hardly is any system that is simple enough not to benefit from domain modeling in general and Tactic DDD in particular.


### Hints and Pitfalls to Avoid
Specific to OOAD and DDD, it is a good idea to establish naming conventions, for instance for Aggregates and their Entities. See Hint 6 in Olaf Zimmermann's ["Technical Writing Tips and Tricks"](https://ozimmer.ch/authoring/2020/04/24/TechWritingAdvice.html) for rationale and additional examples.

Eric Evans establishes the following design heuristics for Aggregates in his [DDD Reference](http://domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf):

* "Use asynchronous communication between Aggregates
* Give enforcement responsibilities (for invariants) to root entity, possibly supported by designated framework mechanisms (e.g., in Spring)
* Keep one Aggregate on one server, allow different Aggregates to be distributed among (hardware) nodes
* Use the same boundaries for transactions and distribution"

In "Implementing DDD", Vaughn Vernon establishes similar rules for Aggregate design (@Vernon:2013):

* "Model true invariants in consistency boundaries.
* Design small aggregates.
* Reference other aggregates by identity.
* Use eventual consistency outside the boundary."

These recommendations can also be found online in an [article series ](http://dddcommunity.org/library/vernon_2011/) at dddcommunity.org.


### Origins and Signs of Use
DDD has been around, in active use on real-world projects, and supported by a community since the first DDD book came out in 2003; it recently became particularly popular in the microservices community as a way to identify service boundaries (via [Strategic DDD](DPR-StrategicDDD.md)). 

<!-- TODO review [FB]: Aggregates to services https://www.youtube.com/watch?v=dlnu5pSsg7k but preferred: https://www.youtube.com/watch?v=hev65ozmYPI -->

Tactic DDD was introduced in Eric Evans' book on DDD (@Evans:2003), but featured even more deeply later in "Implementing Domain-Driven Design" by Vaughn Vernon (@Vernon:2013). 

Usage of the pattern names and presence of [Domain Model](../artifact-templates/DPR-DomainModel.md), either drawn informally or modeled in a UML tool or DSL, indicate use.


### Related Content

#### Performing Roles and Related Artifacts (Synopsis)

* Domain experts, business analysts
* Application architects 
* Any team member designing and developing

* [User Stories](../artifact-templates/DPR-UserStory.md) and [Use Cases](../artifact-templates/DPR-UseCase.md) provide input, possibly going through [Story Splitting](DPR-StorySplitting.md). 
* [Domain Model](../artifact-templates/DPR-DomainModel.md)


#### Practices and Techniques (Refinements, Guides)

* [Strategic DDD](DPR-StrategicDDD.md) takes a broader view on the as-is and to-be design.
* [Stepwise Service Design](SDPR-StepwiseServiceDesign.md) can identify API endpoints *candidates* in DDDs.
* [Event Storming](https://ziobrando.blogspot.com/2013/11/introducing-event-storming.html) is a complementary technique that can help identify an initial set of Aggregates, Entities, Commands, Events, and other design elements (to be refactored and refined in further tactic DDD). 
* The [DDD Whirlpool](https://domainlanguage.com/ddd/whirlpool/) by Eric Evans is frequently mentioned. 
* [Story Mapping](https://www.agilealliance.org/glossary/storymap/) <!-- by J. Patton --> and [Story Splitting](https://www.agilealliance.org/glossary/split/) may assist with DDD pattern identification (among other things).
* Context Mapper tutorials and guides, for instance on [Rapid OOAD](https://contextmapper.org/docs/rapid-ooad/).
* [Domain Story Telling](https://domainstorytelling.org/).

There is a GitHub organization called ["DDD Crew"](https://github.com/ddd-crew) that features many business analysis-level extensions to DDD practices, for instance a [Aggregate Design Canvas](https://github.com/ddd-crew/aggregate-design-canvas) template.


### More Information 

* There is a free DDD reference providing pattern summaries ([PDF](http://domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf), [Word](http://domainlanguage.com/wp-content/uploads/2016/05/PatternSummariesUnderCreativeCommons.doc)) and a [DDD glossary](http://dddcommunity.org/resources/ddd_terms/) on the DDD community website. 
* Michael Ploed shares his presentation slides on [Speaker Deck](https://speakerdeck.com/mploed) and also has a [DDD ebook](https://leanpub.com/ddd-by-example) on LeanPub (@Ploed:2019). 
* The DDD Europe organization has published the ["Domain-Driven Design: The First 15 Years"](https://leanpub.com/ddd_first_15_years/) on LeanPub, a collection of "old and new essays" by "prominent authors in the software design world". 
* The IBM Cloud Garage introduces tactic DDD [here](https://www.ibm.com/garage/method/practices/code/domain-driven-design). The connection to service API design is discussed in a [side bar of the pattern language Cloud Adoption Patterns](https://kgb1001001.github.io/cloudadoptionpatterns/Cloud-Native-Architecture/Sidebar-API-Entity/).
* Craig Larman's book "Applying UML and Patterns: An Introduction to Object-Oriented Analysis and Design and Iterative Development" (@Larman:2004) does not cover DDD specifically, but still has very valid advice for tactic DDD work. For instance, Chapter 9 provides detailed guidance how to find conceptual classes.

<!--
* Consult [the IFS website](https://www.ifs.hsr.ch/index.php?id=15666&L=4) for additional pointers.
-->

Articles about Context Mapper and its interpretation of the DDD patterns include:

* "Domain-driven Architecture Modeling and Rapid Prototyping with Context Mapper" (@Kapferer:2020:CM1) 
* "Domain-Driven Service Design — Context Modeling, Model Refactoring and Contract Generation" (@Kapferer:2020:CM2). 

These conference papers can be found on the [Context Mapper website](https://contextmapper.org/background-and-publications/). Experience with the tool on projects is shared online [here](https://ozimmer.ch/modeling/2022/11/23/ContextMapperInsights.html) and [here](https://blog.mimacom.com/ddd-and-context-mapper-experience/).


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Practice/Technique Tactic DDD"
author: Olaf Zimmermann (ZIO)
date: "01, 16, 2023"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

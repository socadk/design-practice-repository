---
Scope: System landscapes, team organization 
Phases: n/a (continuous)
Roles: All cross-project roles 
Input: Business model, IT strategy, existing systems
Output: Context Map
Abstraction/Refinement Level: Conceptual 
---

[DPR Git Pages Home](https://socadk.github.io/design-practice-repository) ---
[Activities Index](https://socadk.github.io/design-practice-repository/activities)

<!-- Word budget: 1000-1500 (3-5 A4 pages); the practice descriptions should be readable in 5 to 10 minutes (expert vs. novice reader) -->

Activity/Technique: *Strategic Domain-Driven Design (DDD)*
----------------------------------------------------------


### Context
While [Tactic DDD](./DPR-TacticDDD.md) deals with implementing domain layer components, Strategic DDD deals with integrating these components and managing complexity in end-to-end application landscapes for the long run. Small projects and businesses such long-term perspective might not require this coordination, but software development projects and development organizations at large software-intensive firms do.

The interfaces between systems and teams have to be managed somehow, either centrally or decentrally. Enterprise architecture management frameworks such as [TOGAF](https://www.opengroup.org/togaf) can be leveraged to do so; [Scrum of Scrums](https://www.agilealliance.org/glossary/scrum-of-scrums/) and the portfolio level in the [Scaled Agile Framework (SAFe)](https://www.scaledagileframework.com/) address related concerns. Strategic DDD provides patterns and a simple diagram type to support such efforts.


### Goal and Purpose (When to Use and When not to Use)

> *As a domain-driven designer, I want to (de-)compose system landscape and team organization so that system parts can be developed, deployed, scaled, and changed independently.*  

According to Alberto Brandolini's [InfoQ article on strategic DDD](https://www.infoq.com/articles/ddd-contextmapping) that develops an example in several steps, there are four particular reasons to bother about model partitioning and model/context boundaries:

1. "Same term, different meaning" (homonym)
2. "Same concept, different use" (polyseme)
3. "External system differences" (heterogeneity)
4.  "Scaling up the organization" (multiple teams) 

Strategic DDD can unveil such ambiguities, and help manage them.

### Instructions (Synopsis, Definition)

The key pattern in strategic DDD is *Bounded Context*, an abstraction of a functional area, system (from different viewpoints), or team:

* "A description of a boundary (typically a subsystem, or the work of a particular team) within which a particular model is defined and applicable" (@Evans:2003).
* "A bounded context is an explicit boundary within which a domain model exists. Inside the boundary, all terms and phrases of the Ubiquitous Language have specific meaning, and the model reflects the language with exactness" (@Vernon:2013). 
* Martin Fowler emphasizes that a Bounded Context is explicit about its interrelationships in his [bliki article on Bounded Contexts](http://martinfowler.com/bliki/BoundedContext.html).

The following domain model for Strategic DDD gives an overview of the patterns in it (as well as the connection to [Tactic DDD](./DPR-TacticDDD.md) via Aggregates):

![Strategic DDD Concepts and their Relations](./images/ZIO-StrategicDDDMetaModel.png)

The original DDD book by Eric Evans defined an initial set of relations between contexts appearing in a map, e.g., the *Conformist* pattern (@Evans:2003). Later on, a few additional types were added, for instance *Partnership* and *Big Ball of Mud*. In ["An Introduction to Domain Driven Design"](http://www.methodsandtools.com/archive/archive.php?id=97), Dan Haywood summarizes the original six patterns as this:

* *Shared Kernel*: "Two bounded contexts use a common kernel of code (for example a library) as a common lingua-franca, but otherwise do their other stuff in their own specific way."
* *Open Host Service (OHS)*: "A bounded context specifies a protocol by which any other bounded context can use its services (for instance, a RESTful HTTP service or a SOAP Web service). This protocol exposes the Published Language."
* *Published Language (PL)*: "The interacting bounded contexts agree on a common language (for example a bunch of XML schemas over an enterprise service bus) by which they can interact with each other."
* *Customer/Supplier* (a.k.a. Customer/Supplier Teams/Development): "One bounded context uses the services of another and is a stakeholder (customer) of that other bounded context. As such it can influence the services provided by that bounded context."
* *Conformist*: "One bounded context uses the services of another but is not a stakeholder to that other bounded context. As such it uses "as-is" (conforms to) the protocols or APIs provided by that bounded context."
* *Anti-Corruption Layer (ACL)*: "One bounded context uses the services of another and is not a stakeholder, but aims to minimize impact from changes in the bounded context it depends on by introducing a set of adapters – an anti-corruption layer."

Summaries of the patterns from the original DDD book as well as the extensions are available for free download in the book ["Domain-Driven Design Reference"](http://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf), also by Eric Evans. For instance, Partnership is defined as: "Where development failure in either of two contexts would result in delivery failure for both, forge a partnership between the teams in charge of the two contexts. Institute a process for coordinated planning of development and joint management of integration. The teams must cooperate on the evolution of their interfaces to accommodate the development needs of both systems. Interdependent features should be scheduled so that they are completed for the same release". An additional relation is *Separate Ways*, expressing that it has been decided not to collaborate and/or integrate two Bounded Contexts.

*Note:* These relationship types are organizational patterns, first and foremost (not technical ones). 

The relationship types still can serve as input for design work, differing with respect to the following design concerns: 

* Symmetric or asymmetric relationship?
* Topology: local vs. remote interface? 
* Visibility (of collaboration/communication partners to each other)?  
* Amount of control and influence for downstream client (consumer) on upstream supplier (provider)?

Note that the relationship types do not exclude, but complement each other by default. 

Strategic DDD identifies Bounded Contexts and then answers these questions to end up at the right pattern for any given relationship. [Context Mapper](https://contextmapper.org/docs/bounded-context/) can help doing so; it features DDD patterns and enforces additional semantic validation rules. The resulting [Context Maps](../artifact-templates/DPR-StrategicDDDContextMap.md) can drive the architectural decision making in API design. Follow-on decisions then pertain the integration style and technology.

<!-- TODO explain FAST and link to Context Mapper paper -->

<!-- Source: https://miro.com/app/board/o9J_lIRKK0Y=/ Select the frame -> export as image -->
![Suggested Steps in Strategic DDD](./images/DPR-StrategicDDDSteps.jpg)


### Example(s)
The [Context Mapper website](https://contextmapper.org/docs/examples/) provides a number of examples of tactic and strategic, including a model of the [Lakeside Mutual](https://github.com/ContextMapper/context-mapper-examples/tree/master/src/main/cml/insurance-example) microservices ecosystem:

![Example Context Map: Lakeside Mutual Case Study](./images/ContextMap-Illustration.png)

### Benefits vs. Effort (Expected Benefits, Skill Levels)
An [OOSPLA 2006 experience report](https://dddcommunity.org/wp-content/uploads/files/practitioner_reports/landre_einar_2006_part1.pdf) makes the case for strategic DDD. A [second article from the same authors](https://dddcommunity.org/wp-content/uploads/files/practitioner_reports/landre_einar_2006_part2.pdf) reports on usage of strategic DDD in enterprise architecture management. 


### Hints and Pitfalls to Avoid

* Never forget whom you build a system for; do not get hung up in pattern philosophy or technical details.
* Consult Chapters 2, 3, 10, and 13 in ["Implementing Domain-Driven Design"](https://www.amazon.com/Implementing-Domain-Driven-Design-Vaughn-Vernon/dp/0321834577) by Vaughn Vernon, for instance for a clarification of the relationships between Subdomains and Bounded Contexts.
* Find more hints in the booklet ["The Anatomy of Domain-Driven Design"](https://leanpub.com/theanatomyofdomain-drivendesign) by Scott Millet and Samuel Knight.


### Origins and Signs of Use
Strategic DDD was introduced in Eric Evans' original DDD (@Evans:2003), but featured even more prominently later in "Implementing Domain-Driven Design" by Vaughn Vernon (@Vernon:2013).

Usage of the pattern names and presence of context maps, either drawn informally or modeled in a tool, indicate use.

### Related Content

### Performing Roles and Related Artifacts (Synopsis)

* Enterprise architects
* Program/portfolio architects  
* Agile teams 

* [Context Map](../artifact-templates/DPR-StrategicDDDContextMap.md)
* System Context Diagram (future work)

### Practices and Techniques (Refinements, Guides)

* [Tactic DDD](./DPR-TacticDDD.md)
* [Stepwise Service Design](./SDPR-StepwiseServiceDesign.md) 
* Event Storming, introduced [here](https://www.ibm.com/cloud/architecture/architecture/practices/event-storming-methodology-architecture) and tool-supported as described [here](https://contextmapper.org/docs/event-storming/).
* Lean [Wardley Mapping](https://learnwardleymapping.com/), capturing strategic intent.
* Enterprise Architecture Management (EAM) offerings and the Scaled Agile Framework (SAFe) may benefit from (or completened by) Strategic DDD. <!-- CE: add links -->
<!-- * Context Modeling in UML or DSL -->

There is a GitHub organization called [ddd-crew](https://github.com/ddd-crew) that features many business analysis-level extensions to DDD practices, for instance a [Bounded Context Canvas](https://github.com/ddd-crew/bounded-context-canvas) template.


### More Information 

Refer to presentations and articles by:

* Alberto Brandolini, for instance ["Strategic Domain Driven Design with Context Mapping"](https://www.infoq.com/articles/ddd-contextmapping/)
* Scott Millet, for instance ["The Anatomy Of Domain-Driven Design"](https://leanpub.com/anatomy-of-DDD) on LeanPub 
* Michael Ploed, for instance ["Visualizing Sociotechnical Architectures with Context Maps"](https://speakerdeck.com/mploed/visualizing-sociotechnical-architectures-with-context-maps?slide=4)
* Vaughn Vernon's [YouTube channel](https://www.youtube.com/channel/UCdbDxsXevDLt7EhRbi2KGjg)
* ["Introduction to Strategic DDD"](https://vaadin.com/learn/tutorials/ddd/strategic_domain_driven_design) on the Vaadin website 

<!-- TODO bibtex SummerSoC 2020, Modelsward 2020 -->
Articles about Context Mapper and its interpretation of the DDD patterns can be found on the [Context Mapper website](https://contextmapper.org/background-and-publications/).

### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Practice/Technique Strategic DDD"
author: Olaf Zimmermann (ZIO)
date: "03, 30, 2021"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

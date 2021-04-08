---
Scope: System landscapes, team organization 
Phases: n/a (continuous)
Roles: All cross-project roles 
Activities: Strategic DDD
Abstraction/Refinement Level: Conceptual 
---

[Git Pages Home](https://socadk.github.io/design-practice-repository) ---
[Artifacts Overview](https://socadk.github.io/design-practice-repository/artifact-templates)


Artifact/Template: *DDD Context Map*
------------------------------------

> *In domain-driven design, a context map shows bounded contexts (model boundaries, of different types) and their relations (e.g., influence flows).*

### Motivation (Addressed Information Need)
A context map visualizes the relationships between Bounded Contexts in [Strategic DDD](../activities/DPR-StrategicDDD.md). Several types of such relationships have been described as patterns; Bounded Contexts abstract from functional feature sets, existing or future application, systems, and teams.

### Usage (Produced and Consumed When)

The different types of map correspond to the following activities:

* Strategic DDD (feature, application maps)
* System decomposition (application and system maps)
* Team organization in SAFe, Scrum of Scrums (team maps)

See activity description for [Strategic DDD](../activities/DPR-StrategicDDD.md) for more context and usage information. 

### Template Structure
DDD as such does not mandate any notation. Each author and presenter has his/her own style. The following visualization of context maps has become quite popular:

![Sample Context Map (Source: Cargo Case Study)](./images/CargoDDD_ContextMap.png)

Strategic DDD models influence and data flows, following a stream or river metaphor. The upstream `U` provides information or services consumed by the downstream `D`. The DDD relationship types either pertain to the relation itself and or its upstream and downstream ends.  

### Example(s)

The above context map was generated from this DSL model ([Context Mapper](https://contextmapper.org/)):

```cml
ContextMap DDDSampleMap {
	contains CargoBookingContext
	contains VoyagePlanningContext
	contains LocationContext
	
	CargoBookingContext [SK]<->[SK] VoyagePlanningContext
	CargoBookingContext [D]<-[U,OHS,PL] LocationContext

	VoyagePlanningContext [D]<-[U,OHS,PL] LocationContext	
}
```

SK indicates a Shared Kernel relationship. OHS stands for Open Host Service, PL for Published Language. See activity description for [Strategic DDD](../activities/DPR-StrategicDDD.md) for pattern descriptions.

### Tools

Both informal, ad hoc modeling and somewhat more diligent approaches are supported:

* [Context Mapper](https://contextmapper.org/) provides a DSL for DDD, as well as transformation and refactoring tools. [This paper](https://contextmapper.org/media/SummerSoC-2020_Domain-driven-Service-Design_Authors-Copy.pdf) summarizes the supported patterns and introduces the stepwise design approach and the tool support for it.
* Any drawing tool, including online and offline ones are often used.
* Whiteboards, both physical and virtual ones such as [miro](https://miro.com), also are a natural choice.


### Hints and Pitfalls to Avoid

* Decide which type(s) of Bounded Context to support: Feature? Application? System? Team? See [this paper](https://contextmapper.org/media/978-3-030-67445-8_11_AuthorsCopy.pdf) for explanations. 
* Specify the arrow/relationship semantics (DDD patterns? other?) and provide a figure legend as DDD does not mandate any particular notation.
* See [Architecture Modeling](../activities/DPR-ArchitectureModeling.md) activity for more modeling hints, including variants of the general "keep it simple" rule.


### Origins and Signs of Use

See activity description of [Strategic DDD](../activities/DPR-StrategicDDD.md). 


### Related Artifacts (incl. Alternatives)

* System Context Diagram
* [Domain Model](DPR-DomainModel.md)
* C4 models and other representations of architecture overviews and component models.


### More Information

["Strategic Domain Driven Design with Context Mapping "](https://www.infoq.com/articles/ddd-contextmapping/) by Alberto Brandolini introduces context maps by scenario and example.

Context Maps are covered in depth in the book ["Implementing Domain-Driven Design"](https://www.amazon.com/Implementing-Domain-Driven-Design-Vaughn-Vernon/dp/0321834577) by Vaughn Vernon (@Vernon:2013).

The language reference of the Context Mapper DSL can be found [here](https://contextmapper.org/docs/context-map/) and [this conference presentation](https://contextmapper.org/media/ZIOSK-Modelsward-Paper-Presentation-v101p.pdf) gives an overview.

The Feature, Application, System, Team (FAST) taxonomy is introduced in ["Domain-driven Architecture Modeling and Rapid Prototyping with Context Mapper,"](https://contextmapper.org/media/978-3-030-67445-8_11_AuthorsCopy.pdf) by Stefan Kapferer and Olaf Zimmermann.


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Context Map (Strategic DDD)"
author: Olaf Zimmermann (ZIO)
date: "03, 30, 2021"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

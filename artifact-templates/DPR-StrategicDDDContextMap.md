---
Scope: System landscapes, team organization 
Phases: n/a (continuous)
Roles: All cross-project roles 
Activities: Strategic DDD
Abstraction/Refinement Level: Conceptual 
---


Artifact/Template: Template: *DDD Context Map*
----------------------------------------------

### Motivation (Addressed Information Need)
A context map visualizes the relationships between [Bounded Contexts]() in [Strategic DDD](../activities/DPR-StrategicDDD.md). Several types of such relationships have been described as patterns; Bounded Contexts abstract from functional feature sets, existing or future application or systems as well as teams.

See activity description for [Strategic DDD](../activities/DPR-StrategicDDD.md) for more information (for the time being). 


### Usage (Produced and Consumed When)

* Strategic DDD
* System decomposition 
* Team organization (SAFe, Scrum of Scrums etc.)


### Template Structure
DDD as such does not mandate any notation. Each author and presenter has his/her own style. The following visualization of context maps has become quite popular:

<img src="images/CargoDDD_ContextMap.svg" height="400" />
<!-- ![](images/CargoDDD_ContextMap.svg) -->


### Example(s)

The above context map was generated from this DSL model ([Context Mapper](https://contextmapper.org/)):

~~~
ContextMap DDDSampleMap {
	contains CargoBookingContext
	contains VoyagePlanningContext
	contains LocationContext
	
	CargoBookingContext [SK]<->[SK] VoyagePlanningContext
	CargoBookingContext [D]<-[U,OHS,PL] LocationContext

	VoyagePlanningContext [D]<-[U,OHS,PL] LocationContext	
}
~~~


### Tools

* [Context Mapper](https://contextmapper.org/)
* Any drawing tool, including online ones
* Whiteboards, both physical and virtual ones such as [miro](https://miro.com)


### Hints and Pitfalls to Avoid

* Decide which type(s) of Bounded Context to support: Feature? Application? System? Team?  
* Specify the arrow/relationship semantics (DDD patterns? other?) and provide a figure legend as DDD does not mandate any particular notation.
* See [architecture modeling activity](../activities/DPR-ArchitectureModeling.md) for more modeling hints, including variants of the general "keep it simple" rule.


### Origins and Signs of Use

See activity description of [Strategic DDD](../activities/DPR-StrategicDDD.md) for the time being. 


### Related Artifacts (incl. Alternatives)

* System Context Diagram
* Domain Model 
* C4 models and other representations of architecture overviews and component models.


### More Information

["Strategic Domain Driven Design with Context Mapping "](https://www.infoq.com/articles/ddd-contextmapping/) by A. Brandolini introduces context maps by scenario and example.

Context Maps are covered in depth in the book "Implementing Domain-Driven Design" by V. Vernon (@Vernon:2013).

The language reference of the Context Mapper DSL can be found [here](https://contextmapper.org/docs/context-map/) and [this conference presentation](https://contextmapper.org/media/ZIOSK-Modelsward-Paper-Presentation-v101p.pdf) gives an overview. <!-- FAST not published in paper yet, Modelsward CCIS or SummerSoC -->


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Context Map (Strategic DDD)"
author: Olaf Zimmermann (ZIO)
date: "10, 16, 2020 (Source: Project DD-DSE)"
copyright: Olaf Zimmermann, 2020 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

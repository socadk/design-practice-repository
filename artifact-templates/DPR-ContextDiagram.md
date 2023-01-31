---
Scope: Entire system
Phases: Analysis, design (all levels) 
Roles: Architect, Project Manager 
Activities: Requirements elicitation, architecture modeling 
Abstraction/Refinement Level: Technology/platform-independent
---


Artifact/Template: *Context Diagram*
------------------------------------
<!--Alternate names or candidate names) can be listed as "Also known as " here.-->
also known as: System Context Diagram

> *A context diagram provides an outside view on a single system, including incoming and outgoing relations with other systems. It does not unveil any system-internal design.*

### Motivation (Addressed Information Need) 
<!--Purpose -->

The [C4 model page](https://en.wikipedia.org/wiki/C4_model) on Wikipedia advises to "show the system in scope and its relationship with users and other systems".


### Usage (Produced and Consumed When)
<!--AA/AS/AE, must identify the producing role and the target audience-->

Drawing a context diagram serves one or more of these purposes: 

* Document external dependencies and coordination needs (including technical risk management and release scheduling).
* Identify application owners and other stakeholders of neighboring systems.
* Estimate and initiate integration design and implementation.


### Template Structure and Notation(s)
<!-- What to do, artifact to produce; minimum, medium maximum diligence/verbosity (?)-->  

Context diagrams are informal, typically; their layout should follow certain conventions. For instance, the external systems or human users can be ordered in specific ways: consumers at the top of the figure and providers at the bottom. Arrow labels and layout should indicate the types of interface (and integration style). 

<!-- not sure: Could use IRP one? -->


### Example(s)
<!-- Must be concrete, ideally give three ones, one for each verbosity/fidelity level basic, medium, full-->

In an order management scenario in telecommunications, external clients such as Web channels supporting human users and external systems (in client/consumer role) may be the primary actors interfacing with the order management system. Secondary actors include backend systems for billing and customer management, as well as the telephony network:

![Context Diagram Example](/artifact-templates/images/ZIO-ContextDiagramExample.png)

<!-- See C4 website and ["An architectural decision modeling framework for service oriented architecture design"](https://elib.uni-stuttgart.de/handle/11682/2682) for more examples. -->


### Tools
<!--From AA, should call out what one needs to be able to do on beginner, intermediate, advanced level; as a team -->

Context diagrams are typically created with light tools, although full-fledged modeling software can also be used:

* Any drawing tool or whiteboarding capability
* C4 tools, one option being Structurizr
* UML tools, either graphical or text-based (such as PlantUML)


### Hints and Pitfalls to Avoid (Common Pitfalls)
<!--See ART, don’t overdo etc.-->

* Organize the diagram for readability; for instance, place and order consumers and providers by their type (human user, external system) and/or importance and/or time of activity. Label all arrows, and explain their meaning in a legend (for example, runtime API call or compile-time dependency?). <!-- already said: place interface consumers at the top and interface providers at the bottom. -->
* Do not confuse black box and white box and views. Here, no internals should be shown.
* Do not stop at the outside view, but zoom in (with a container diagram).  
* Do not forget to update this diagram as a design evolves; when a new API is consumed, this has to be shown as an outbound external interface in any context diagrams drawn earlier.
* Consider [Strategic DDD](../activities/DPR-StrategicDDD.md) to carve out contexts.

### Origins and Signs of Use
<!-- From PLOPs and from AA-->
This is not a UML diagram type, but has been present in professional services methods since the late 1990s. Many UML tools have some proprietary support, often basic.

The Unified Architecture Method (UAM) has a task called ["Define System Scope & Context"](http://www.unified-am.com/UAM/index.htm#UAM/tasks/uam_define_system_scope_D6C3E23D.html).

The System Integration Method in IBM Global Services included a System Context Diagram artifact since its inception in the late 1990s.

<!-- TODO Wayback machine for IBM dW article? URI? [O] Student Project? Combo Crawler/Archive Lookup/Diffing? -->


### Related Artifacts and Practices (incl. Alternatives)
<!--in DPR/OLAF and elsewhere-->

The [Architecture Modeling](../activities/DPR-ArchitectureModeling.md) activity produces context diagrams.

Related artifacts are: 

* [Strategic DDD context maps](DPR-StrategicDDDContextMap.md), showing relations between bounded contexts 
* [Use cases](DPR-UseCase.md) and [user stories](DPR-UserStory.md) (contributing primary external interfaces)
* Architecture [Overview Diagram](DPR-OverviewDiagram.md)


### More Information

* Domain-driven design tools such as [Context Mapper](https://contextmapper.org/docs/context-map/) can be used to draw context diagrams that show one or more systems and their relations.  
* The Agile Modeling website advocates free-form[ modeling](http://agilemodeling.com/artifacts/freeForm.htm) and a [multiple-models](http://agilemodeling.com/artifacts/) approach. 
* There is a Scenario viewpoint in the [4+1 architectural view model](https://en.wikipedia.org/wiki/4%2B1_architectural_view_model). 
* The Soft Systems Methodology has a [Rich Picture](https://en.wikipedia.org/wiki/Rich_picture) artifact.

<!-- A proposal for Open and Lean Architecting Framework collecting important artifacts can be found on an [HSR FHO/OST web page](https://www.ifs.hsr.ch/index.php?id=13195&L=4). -->


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Context Diagram"
author: Olaf Zimmermann (ZIO)
date: "01, 31, 2023"
copyright: Olaf Zimmermann, 2023 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```
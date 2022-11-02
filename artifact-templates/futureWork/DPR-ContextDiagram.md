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

> *A context diagram provides an outside view on a system, including incoming and outgoing relations to/with other systems.*

### Motivation (Addressed Information Need) 
<!--Purpose -->

The [C4 model page](https://en.wikipedia.org/wiki/C4_model) on Wikipedia advises to "show the system in scope and its relationship with users and other systems".


### Usage (Produced and Consumed When)
<!--AA/AS/AE, must identify the producing role and the target audience-->

Drawing a container diagram serves one or more of these purposes: 

* Document dependencies and coordination needs (technical risk, scheduling)
* Identify application owners and other stakeholders of neighboring systems
* Initiate integration design and implementation 


### Template Structure and Notation(s)
<!-- What to do, artifact to produce; minimum, medium maximum diligence/verbosity (?)-->  

Context diagrams are informal, typically; their layout should follow certain conventions. For instance, the external systems or human users can can be ordered in certain ways: consumers at the top of the figure, providers at the bottom. Arrows should be labelled to indicate the types of interface (and integration style). 

<!-- not sure: Could use IRP one? -->


### Example(s)
<!-- Must be concrete, ideally give three ones, one for each verbosity/fidelity level basic, medium, full-->

In an order management scenario in telecommunications, external clients such as Web channels supporting human users and external systems (in client/consumer role) may be the primary actors interfacing with the order management system. Secondary actors include backend systems for billing and customer management, as well as the telephony network:

![Context Diagram Example](/artifact-templates/images/ZIO-ContextDiagramExample.png) <!-- TODO 2022 provide paper reference -->

See C4 website for more examples.


### Tools
<!--From AA, should call out what one needs to be able to do on beginner, intermediate, advanced level; as a team -->

* Any drawing tool, whiteboards
* Structurizr
* UML tools


### Hints and Pitfalls to Avoid (Common Pitfalls)
<!--See ART, don’t overdo etc.-->

* Organize the diagram for readability; for instance, place interface consumers at the top and interface providers at the bottom. Order consumers and providers by their type(human user, external system) and/or importance and/or time of activity.
* Do not confuse black box and white box and views. Here, no internals should be shown.
* Do not stop at the outside view, but zoom in (with a container diagram). Label all arrows, and explain their meaning in a legend. 
* Do not forget to update this diagram as a design evolves; when a new API is consumed, this has to be shown as an outbound external interface in any context diagrams drawn earlier.


### Origins and Signs of Use
<!-- From PLOPs and from AA-->
This is not a UML diagram type (tools have some basic/proprietary support, usually), but has been present in professional services methods since late 1990s.

UAM has this artifact: <http://www.unified-am.com/UAM/index.htm#UAM/tasks/uam_define_system_scope_D6C3E23D.html>


### Related Artifacts and Practices (incl. Alternatives)
<!--in DPR/OLAF and elsewhere-->

The [Architecture Modeling](../activities/DPR-ArchitectureModeling.md) activity produces context diagrams.

Related artifacts are: 

* Strategic DDD context maps, showing relations between bounded contexts 
* Use cases and user stories (contributing primary external interfaces)
* Container Diagram


### More Information

DDD tools such as Context Mapper. Agile modeling website. Scenario viewpoint in the 4+1 model.

<!-- A proposal for Open and Lean Architecting Framework collecting important artifacts can be found on an [HSR FHO/OST web page](https://www.ifs.hsr.ch/index.php?id=13195&L=4). -->


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Context Diagram"
author: Olaf Zimmermann (ZIO)
date: "11, 02, 2022"
copyright: Olaf Zimmermann, 2022 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```
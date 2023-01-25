---
Scope: Entire system
Phases: Design (all levels) 
Roles: Architect (different specializations)
Activities: Architecture design, component modeling 
Abstraction/Refinement Level: Technology/platform-independent
---


Artifact/Template: *Overview Diagram*
--------------------------------------
<!--Alternate names or candidate names) can be listed as "Also known as " here.-->
also known as: Architecture Overview Diagram, Container Diagram <!-- "The Important Stuff View" -->

> *A container/overview diagram provides an overview of logical and physical building blocks that are refined in other types of diagrams. Unlike the context diagram, it looks inside a system, picking up all external interfaces (with human users, with other systems).*

### Motivation (Addressed Information Need) 
<!--Purpose -->

* Typically created during solution strategy, refined iteratively and incrementally later (as/if needed)
* Illustrate [Client-Server Cuts (CSCs)](https://hillside.net/plop/plop97/Proceedings/renzel.pdf) such as Remote User Interface or Distributed Presentation and other "big" architectural decisions 
* Disclose information about interface protocols and implementation technologies


### Usage (Produced and Consumed When)
<!--AA/AS/AE, must identify the producing role and the target audience-->

A container diagram (aka architecture overview) can be used for: 

* Quick orientation for starters (new DevOps team member, support, and maintenance staff)
* Work distribution and planning
* Non-technical stakeholder communication (including project managers and sponsors) 


### Template Structure and Notation(s)
<!-- What to do, artifact to produce; minimum, medium maximum diligence/verbosity (?)--> 

Container diagrams often come as informal rich pictures (IRPs). C4 and its tools take a slightly more formal approach, allowing one to zoom in (coming from a [Context Diagram](DPR-ContextDiagram.md), moving on to a [Component Diagram](DPR-ComponentDiagram.md)).


### Example(s)
<!-- Must be concrete, ideally give three ones, one for each verbosity/fidelity level basic, medium, full-->

Having decided for logical layers as primary organizing/decomposition principles (which is a common but not the only option), an architecture overview diagram featuring layers and their assignment to tiers may look as follows:

![Container Diagram Sketch/Example](/artifact-templates/images/ZIO-AbstractContainerDiagramSketch.png)

Three conceptual tiers are shown, one for application frontends and integrated external systems (in client role), one centered on business logic, and one containing data stores and external systems (in provider role).


### Tools
<!--From AA, should call out what one needs to be able to do on beginner, intermediate, advanced level; as a team -->

Common choices include:

* Any drawing tool, real-world whiteboards or whiteboarding software
C4 tools including Structurizr
* UML tools, possibly with customization or profiling


### Hints and Pitfalls to Avoid (Common Pitfalls)
<!--See ART, don’t overdo etc.-->

Just a few hints (many more can be found online):

* Model and diagram with a clearly defined purpose and target audience in mind.
* Decide for a single, consistent level of abstraction and refinement per diagram; explain which elements are included in the overview and why. 
* Do not confuse the abstract, conceptual notion of "container" (used here) with more concrete technical container concepts such as those in charge of dependency injection (for instance, in Spring) or orchestration and deployment containers (for instance, in Docker and Kubernetes).   
* Use names that unveil domain concepts and architectural roles; for example, "Policy Management Frontend" is better than "Client" (in an insurance domain/scenario). 
* Be consistent in the use of notation, provide a legend for non-standard diagram elements.

See the section "Notation, notation, notation" on the [C4 model home page](https://c4model.com/#notation) and its [diagram review checklist](https://c4model.com/assets/software-architecture-diagram-review-checklist.pdf) for more hints.


### Origins and Signs of Use
<!-- From PLOPs and from AA-->

Container Diagram is one of the four Cs in C4, but the notion and concept of providing overview diagrams is much older, going back to the beginnings of the software architecture field (and beyond). 


### Related Artifacts and Practices (incl. Alternatives)
<!--in DPR/OLAF and elsewhere-->

Activities:

* [Architecture Modeling](../activities/DPR-ArchitectureModeling.md) activity

Artifacts:

* [Context Diagram](DPR-ContextDiagram.md)
* [Component Diagram](DPR-ComponentDiagram.md)
* [Deployment Diagram](DPR-DeploymentDiagram.md)


### More Information

* arc42 [solution strategy](https://docs.arc42.org/section-4/)
* [C4 on InfoQ](https://www.infoq.com/articles/C4-architecture-model/)
* Scott Ambler <!-- advises to --> ["Model Your Architecture"](http://agilemodeling.com/essays/agileArchitecture.htm#Model)


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Container Diagram"
author: Olaf Zimmermann (ZIO)
date: "01, 18, 2022"
copyright: Olaf Zimmermann, 2022 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

<!--
# References
[C-99]: # (Comment: References will be added here automatically when using -bibliography option of pandoc command)
-->

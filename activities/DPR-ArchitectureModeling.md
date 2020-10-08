---
Scope: Entire system
Phases: "Design (all levels)"
Roles: "Application architects and anybody else involved in system design"
Input: "Non-functional requirements, architectural decisions"
Output: "Diagrams, taking different viewpoints"
Abstraction/Refinement Level: Technology/platform-independent
---


Activity/Technique: *Architecture Modeling*
-------------------------------------------
a.k.a. Architecture Specification and Documentation

### Context
"Effektive Softwarearchitekturen" (@Starke:2015) explains that any architecture design (and early solution strategy in particular) is about *structure* and *technology*. 

This desire for structure can be met by identification of candidate components and their continuous refinement, starting with "big" [architectural decisions](DPR-ArchitecturalDecisionCapturing.md) for instance about logical [layers](https://wiki.hsr.ch/APF/files/Layers.pdf), [Client/Server Cuts (CSCs)](http://www.objectarchitects.de/ObjectArchitects/papers/Published/ZippedPapers/renzel.pdf) and architectural styles such as Client/Server (and/or service-oriented architecture).

Technology concepts are designed/decided via styles, patterns, reference architectures, frameworks, component containers and deployments (for instance, Spring Boot and Docker running in a public cloud). 


### Goal and Purpose (When to Use and When not to Use)

> As a software engineer performing architecture design work,

> I want to capture my current understanding of the structure of system under construction (in terms of its components and connectors), share it with peers and other stakeholders and continuously evolve it

> so that I can plan ahead (design and implementation work), manage risk and trace the design back to [architecturally significant requirements](https://en.wikipedia.org/wiki/Architecturally_significant_requirements).


### Instructions (Synopsis, Definition)
*Derive the level of abstraction, breadth, depth and notation for any architecture model that you create from a set of stakeholder concerns and information need caused by these concerns. Create one model/diagram per viewpoint (i.e., set of stakeholder concerns).* 

For instance, four common modeling steps are: 
<!-- Source: https://miro.com/app/board/o9J_kmvD-I0=/?fromEmbed=1 
not working:
![](images/DPR-ArchitectureModeling.png | width=100)
![](images/DPR-ArchitectureModeling.png =250x250)
-->
<img src="images/DPR-ArchitectureModeling.png" height="400" />

* Create a *system context diagram* to visualize external dependencies (stakeholder: project manager; concern: scope control and risk management).
* Provide an *architecture overview diagram* that captures the outcome of the executive decisions made in the solution strategy (stakeholder: project sponsor, entire team; concern: joint understanding of technical approach to achieving project goals and stakeholder requirements, project/iteration planning).
* Refine selected components that are technically challenging to design and implement(stakeholder: architects, developers, maintainers; concern: support decision making, trace design and implementation progress, manage/mitigate technical risk during evolution and maintenance) in a *component model*.
* Show how and where logical components will be deployed to real or virtual hardware (stakeholder: DevOps personnel including database administrators, system managers, security specialists; concern: automation, cloud cost management, network configuration) in a *deployment diagram*.

A wide range of notations and tools to support these and other modeling tasks exist, from ad hoc and informal to systematic and full-fledged. Some of the choices include:

* Format: graphical vs. textual (DSLs)
* Notation: Informal Rich Pictures (IRPs) vs. Unified Modeling Language (UML) models/diagrams (possibly using architecture-specific stereotypes) vs. Architecture Description Languages (ADLs) such as Block Diagrams from the [Fundamental Modeling Concepts (FMC)](http://www.fmc-modeling.org/home).
* Level of detail (abstraction and refinement); a model never is a 1:1 copy of the modeled realm (by definition)
* Naming of diagram elements (for instance, components and connectors)
* Tools (if any)

Popular viewpoint models are:

* P. Kruchten's [4+1 views on software architecture](https://en.wikipedia.org/wiki/4%2B1_architectural_view_model)
* The [viewpoints and perspectives proposed by N. Rozanski and E. Woods](https://www.viewpoints-and-perspectives.info/home/viewpoints/) (@RozanskiWoods:2005)
* Having started with a "less is more" (and anti-UML message), the [C4 Model](../artifact-templates/futureWork/DPR-C4Model.md) has now evolved into a rather comprehensive set of diagrams supported by the Structurizr library and online tool. 




### Example(s)
<!-- Must be concrete, ideally give three ones, one for each verbosity/fidelity level basic, medium, full -->
The component overview of the Lakeside Mutual frontend-backend and service landscape, targeting architects and developers that want to orient themselves, was created with PlantUML:

![Lakeside Mutual component overview](https://raw.githubusercontent.com/Microservice-API-Patterns/LakesideMutual/master/resources/overview-diagram.png)

Page 4 of [this presentation](https://ozimmer.ch/assets/presos/ZIO-FromDDDToMAPIsQS2020v10p.pdf) provides an examples of an architecture overview diagram styles as an IRP.

<!--
~~~
TODO
~~~
-->


### Benefits vs. Effort (Expected Benefits, Skill Levels)
"Agile Modeling" by S. Ambler has a core practice called [Just Barely Good Enough Models and Documents](http://agilemodeling.com/essays/barelyGoodEnough.html) that covers cost vs. benefit of modeling (@Ambler:2002). 

George Fairbanks sends similar messages in bis book ["Just Enough Software Architecture"](https://www.georgefairbanks.com/book/). (@Fairbanks:2020)


### Hints and Pitfalls to Avoid (Common Pitfalls)

* Capture both static and dynamic aspects (for instance, compile time and runtime dependencies). Consider to complement your diagrams with supplemental information; for instance, talk the reader through each figure (i.e., explain all boxes and arrows) and/or provide [CRC cards](../artifact-templates/futureWork/DPR-CRCCard.md) to explain responsibilities and collaborations of the components that appear in architecture overviews and component models. 
* Model both "sunny day" and "rainy day" behavior (normal case, error situations).
* Do not model just because; choose set of diagrams and notation consciously, reflecting on the project and company culture, team capabilities and preferences. 
* But do not skip modeling just because working software is valued more than comprehensive documentation; see above for motivation and (light, lean) instructions.
* All diagrams should disclose the notation used as well as their target audience and information need that is satisfied. If a non-standard notation is used, a legend should be provided.


### Origins and Signs of Use
If the above hints are followed, use of architecture modeling is straightforward to spot. If not, you have a review finding and set of questions to ask &#128515;. 


### Related Content

#### Performing Roles and Related Artifacts (Synopsis)
See metadata at the top for synopsis. 


#### Practices and Techniques (Refinements, Guides)

* SMART [NFR elicitation](DPR-SMART-NFR-Elicitation.md)
* Key [Architectural Decisions (ADs)](DPR-ArchitecturalDecisionCapturing.md) (Executive Decisions) 
* Architecture review practices 


### More Information 
<!-- Further Reading, Academic Publications) -->

* IEEE Software Insights ["Why They Just Don't Get It: Communicating about Architecture with Business Stakeholders"](http://architectuurmeteenhoofdletterp.nl/wp-content/uploads/2017/06/why_they_just_dont_get_it.pdf)
* [ISO/IEC/IEEE 42010 templates](http://www.iso-architecture.org/ieee-1471/templates/)
* [C4 Model](https://c4model.com/) 
* [UML](https://www.uml-diagrams.org/) <!-- TODO (v2) ADLs? -->
* arc42 [building block view](https://docs.arc42.org/section-5/), [runtime view](https://docs.arc42.org/section-6/), [deployment view](https://docs.arc42.org/section-7/)


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Architecture Modeling"
author: Olaf Zimmermann (ZIO)
date: "10, 01, 2020 (Source: Project DD-DSE)"
copyright: Copyright 2020 Olaf Zimmermann. All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

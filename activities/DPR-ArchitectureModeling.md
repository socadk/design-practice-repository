---
Scope: Entire system
Phases: "Design (all levels)"
Roles: "Application architects and anybody else involved in system design"
Input: "Non-functional requirements, architectural decisions"
Output: "Diagrams, taking different viewpoints"
Abstraction/Refinement Level: Technology-/platform-independent
---


Activity/Technique: *Architecture Modeling*
-------------------------------------------
also known as: Architecture Specification and Documentation

### Context
Software architecture books such as "Software Architecture in Pratice" (@Bass:2012) or the German "Effektive Softwarearchitekturen" (@Starke:2015) teach us that any architecture design (and early solution strategy in particular) is about *structure* and *technology*. 

The desire for structure can be met by the identification of candidate components and their continuous refinement, starting with "big" [architectural decisions](DPR-ArchitecturalDecisionCapturing.md), for instance, about logical layers, [Client/Server Cuts (CSCs)](http://www.objectarchitects.de/ObjectArchitects/papers/Published/ZippedPapers/renzel.pdf), and architectural styles such as client/server and/or [(micro-)service-oriented architectures](https://ozimmer.ch/patterns/2020/07/06/MicroservicePositions.html). <!-- styles, patterns, reference architectures -->

Furthermore, technology concepts also have to be decided: middleware and frameworks such as component containers, communication protocols, and message exchange formats, as well as cluster and deployment managers (for instance, Spring Boot and Docker/Kubernetes running in a public cloud). 

The [arc42 website](https://docs.arc42.org/section-4/) suggests a table format to capture early decisions; complementary to that, the overall architecture and selected parts and their dependencies and interactions should also be visualized (to accommodate the information needs of the different types of stakeholders, from project sponsors to DevOps personnel and auditors). 


### Goal and Purpose (When to Use and When not to Use)

> *As a software engineer performing architecture design work,*

> *I want to capture my current understanding of the static and dynamic structure of the system under construction (in terms of its components and connectors), share it with peers and other stakeholders, and continuously evolve it*

> *so that I can plan ahead (design and implementation work), manage risk, and trace the design back to [architecturally significant requirements](https://en.wikipedia.org/wiki/Architecturally_significant_requirements).*


### Instructions (Synopsis, Definition)
*Model the architecture. Derive the level of abstraction, breadth, depth, and notation for any architectural model that you create from a set of stakeholder concerns and information needs caused by these concerns. Create one model/diagram per viewpoint (i.e., set of stakeholder concerns).* 

<!-- Source: https://miro.com/app/board/o9J_lN6TopI=/ -->

![Architecture Modeling Steps and Viewpoints](/activities/images/DPR-ArchitectureModeling.jpg)

For instance, four common modeling steps are: 

1. Create a system [Context Diagram](../artifact-templates/DPR-ContextDiagram.md) to visualize external dependencies (stakeholder: project manager; concern: scope control and risk management).
2. Provide an Architecture [Overview Diagram](../artifact-templates/DPR-OverviewDiagram.md) (aka container diagram) that captures the outcome of the early, "big" decisions made in the solution strategy (stakeholder: project sponsor, entire team; concern: joint understanding of technical approach to achieving project goals and stakeholder needs, project/iteration planning).
3. Refine selected components that are technically challenging to design and implement in one or more [Component Diagram(s)](../artifact-templates/DPR-ComponentDiagram.md) (stakeholder: architects, developers, maintainers; concern: support decision making, trace design and implementation progress, manage/mitigate technical risk during evolution and maintenance). You might want to capture the component design results in [CRC Cards](../artifact-templates/DPR-CRCCard.md) that explain responsibilities and collaborations of the boxes in architecture overviews and component diagrams. You also might want to complement these diagrams and cards with *Component Interaction Diagrams (CIDs)* that illustrate the dynamic behavior of the components.   
4. Show how and where logical components will be deployed to real or virtual hardware (stakeholder: DevOps personnel including database administrators, system managers, security specialists; concern: automation, cloud cost management, network configuration) in a [Deployment Diagram](../artifact-templates/DPR-DeploymentDiagram.md).

A wide range of notations and tools to support these and other modeling tasks exist, from ad hoc and informal to systematic and full-fledged. Some of the choices include:

* Format: graphical languages vs. textual ones (Domain-Specific Languages, Architecture Description Languages)
* Notation: *Informal Rich Pictures (IRPs*) vs. *Unified Modeling Language (UML)* models/diagrams (possibly using architecture-specific stereotypes) vs. Architecture Description Languages (ADLs) such as Block Diagrams from the [Fundamental Modeling Concepts (FMC)](http://www.fmc-modeling.org/home)
* Viewpoint model and level of detail (or abstraction and refinement; by definition, a model is not a 1:1 copy of the modeled realm, but leaves out details so that the essence is expressed)
* Naming conventions for diagram elements (for instance, components and connectors)
* Tools (if any), online options including [PlantUML](https://plantuml.com/), [Structurizr](https://structurizr.com/), and [Mermaid](https://mermaid-js.github.io/mermaid/#/)

Popular viewpoint models are:

* Philippe Kruchten's [4+1 views on software architecture](https://en.wikipedia.org/wiki/4%2B1_architectural_view_model).
* The [viewpoints and perspectives](https://www.viewpoints-and-perspectives.info/home/viewpoints/) (@RozanskiWoods:2005) proposed by Nick Rozanski and Eoin Woods.
* Having started with a "less is more" (and anti-UML message), the C4 Model has now evolved into a rather comprehensive set of diagrams supported by the [Structurizr](https://structurizr.com/) library and online tool. 


### Example(s)
<!-- Must be concrete, ideally give three ones, one for each verbosity/fidelity level basic, medium, full -->
The component overview of the frontend-backend and service landscape at [Lakeside Mutual](https://github.com/Microservice-API-Patterns/LakesideMutual), targeting architects and developers that want to orient themselves, was created with PlantUML:

![Lakeside Mutual Component Overview](https://raw.githubusercontent.com/Microservice-API-Patterns/LakesideMutual/master/resources/overview-diagram.png)

Page 4 of [this presentation](https://ozimmer.ch/assets/presos/ZIO-FromDDDToMAPIsQS2020v10p.pdf) provides an example of an architecture overview diagram styled as an IRP. C4 examples are available publicly [here](https://structurizr.com/share/1). PlantUML extensions and examples can be found in [The Hitchhiker’s Guide to PlantUML](https://crashedmind.github.io/PlantUMLHitchhikersGuide/index.html).

An [arc42 FAQ](https://faq.arc42.org/questions/C-4-3/) provides examples of "big" solution strategy decisions worth capturing and visualizing. Section 5 of the arc42 template covers the [building block view(s)](https://docs.arc42.org/section-5/).


### Benefits vs. Effort (Expected Benefits, Skill Levels)
"Agile Modeling" by Scott Ambler has a core practice called ["Just Barely Good Enough Models and Documents"](http://agilemodeling.com/essays/barelyGoodEnough.htm) that covers cost vs. benefit of modeling (@Ambler:2002). 

George Fairbanks sends similar messages in his book ["Just Enough Software Architecture"](https://www.georgefairbanks.com/book/) (@Fairbanks:2010).

A variation of the "if in doubt leave it out" rule for DPR method adoption applies here:

> *Do not create a 'big ball of model mud'; always have a distinct target audience with its information needs in mind when creating a model or a diagram. Base your in/out and naming decisions on the preferences and background of that particular audience.*


### Hints and Pitfalls to Avoid

* Capture both static and dynamic aspects (for instance, compile time and runtime dependencies). UML sequence diagrams can serve as CIDs; the [arc42 Runtime View](https://docs.arc42.org/section-6/) provides further advice. 
* Model both "sunny day" and "rainy day" behavior (normal case, error situations).
* Do not model just because; choose a set of diagrams and notation consciously, reflecting on the project and company culture as well as team capabilities and preferences. 
* But do not skip modeling just because working software is valued more than comprehensive documentation; see above for motivation and (light, lean) instructions.
* All diagrams should disclose the notation used as well as their target audience and purpose (i.e., satisfied information needs). If a non-standard notation is used, a legend should be provided. Consider complementing your diagrams with supplemental information; for instance, talk the reader through each figure (i.e., explain all boxes and arrows). 
* Do not forget to review. A [checklist for architecture diagram reviews](https://c4model.com/review/) can be found on the C4 website. The Medium story ["Questions to Ask when Migrating to the Cloud"](https://medium.com/olzzio/questions-to-ask-when-migrating-to-the-cloud-dcbf7c5febdf) collects 18 review questions, many of which also are eligible when not operating in the cloud.


### Origins and Signs of Use
Modeling arguably has been there since the very beginnings of computer science and software engineering; most computer programs actually are models and abstractions of some parts of the real world. 

By definition, models abstract from the modeled subject(s); so carefully decide what not to model. If the tips in the section "Hints and Pitfalls to Avoid" are followed, the use of architecture modeling and models is straightforward to spot. If not, you have a review finding and set of questions to ask. 


### Related Content

#### Performing Roles and Related Artifacts (Synopsis)
Application architects and anybody else involved in system design model architectures, using non-functional requirements and architectural decisions made as input. While modeling, new requirements and decisions required often are identified.

Non-functional requirements, for instance those captured in [Quality Attribute Scenarios (QAS)](../artifact-templates/DPR-QualityAttributeScenario.md), provide essential input to this activity.
Its output is documented in one or more instances of [Context Diagram](../artifact-templates/DPR-ContextDiagram.md), [Overview Diagram](../artifact-templates/DPR-OverviewDiagram.md), [Component Diagram(s)](../artifact-templates/DPR-ComponentDiagram.md), and [Deployment Diagram](../artifact-templates/DPR-DeploymentDiagram.md). [CRC Cards](../artifact-templates/DPR-CRCCard.md) can be produced while modeling.

#### Practices and Techniques (Refinements, Guides)

* [SMART NFR Elicitation](DPR-SMART-NFR-Elicitation.md) provides input
* [Architectural Decisions (AD) Capturing](DPR-ArchitecturalDecisionCapturing.md) to justify the modeling output
* Architecture review practices such as ATAM and DCAR


### More Information 
<!-- Further Reading, Academic Publications) -->

* IEEE Software Insights ["Why They Just Don't Get It: Communicating about Architecture with Business Stakeholders"](http://architectuurmeteenhoofdletterp.nl/wp-content/uploads/2017/06/why_they_just_dont_get_it.pdf)
* [ISO/IEC/IEEE 42010 templates](http://www.iso-architecture.org/ieee-1471/templates/)
* [C4 Model](https://c4model.com/) 
* [UML](https://www.uml-diagrams.org/) and other [modeling languages](https://modeling-languages.com/)
* arc42 [building block view](https://docs.arc42.org/section-5/), [runtime view](https://docs.arc42.org/section-6/), [deployment view](https://docs.arc42.org/section-7/)


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Architecture Modeling"
author: Olaf Zimmermann (ZIO)
date: "09, 03, 2024"
copyright: Copyright 2020-2024 Olaf Zimmermann. All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

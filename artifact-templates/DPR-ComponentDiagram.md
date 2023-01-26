---
Scope: Entire system
Phases: Design (all levels) 
Roles: Application Architect
Activities: Architecture modeling 
Abstraction/Refinement Level: Technology/platform-independent
---


Artifact/Template: *Component Diagram*
---------------------------------------
<!--Alternate names or candidate names) can be listed as "Also known as " here.-->
a.k.a. Logical View

> *A component diagram zooms into an element from an architecture overview/container diagram and shows its logical building blocks and their relations.*

### Motivation (Addressed Information Need) 
<!--Purpose -->

The [C4 model page](https://en.wikipedia.org/wiki/C4_model) on Wikipedia describes this artifact as: "decompose containers into interrelated components, and relate the components to other containers or other systems".

<!-- TODO what is a component anyway? how different from class? *candidate*, comes from story splitting and patterns (solution strategy!) -->


### Usage (Produced and Consumed When)
<!--AA/AS/AE, must identify the producing role and the target audience-->

This diagram type is an intermediate artifact, supporting usage scenarios and problem-solving strategies such as:

* Divide and conquer, facilitate working in parallel. 
* Estimate effort, organize and support buy-vs.-build-vs.-rent decision making.  
* Support development with meaningful abstractions, explain difficult parts (design hot spots).
* Assist with change impact analysis. 
* Identify bottlenecks, single points of failure and other quality risks.


### Template Structure and Notation(s)
<!-- What to do, artifact to produce; minimum, medium maximum diligence/verbosity (?)-->  

Component diagrams that illustrate the static structure often come in boxes-and-arrows form, with the semantics of these diagram elements explained in a legend or standardized. When using UML, for instance, stereotyped classes can be used as boxes.

<!-- ![](/images/NN.png) -->

The [C4 Model](https://c4model.com/) for visualizing software architecture by Simon Brown introduces component models as its third C. <!-- say that SB does not recommend to model the fourth C, but added three several supplemental views later, which makes it a C7, not too different from pragmatic UML use --> It also features a ["Dynamic diagram"](https://c4model.com/#SupplementaryDiagrams).

Unified Modeling Language (UML) has a component diagram, but due to language and tool limitations stereotyped class diagrams might also be an adequate choice. The UML communication diagram (formerly known as a "UML collaboration diagram") captures component dynamics; sequence diagrams are a valid choice for that purpose as well. <!-- TODO ADS link? -->


### Example(s)
<!-- Must be concrete, ideally give three ones, one for each verbosity/fidelity level basic, medium, full-->

The following component diagram identifies a number of generic candidate components across logical layers (based on Figure 7 in ["An architectural decision modeling framework for service oriented architecture design"](https://elib.uni-stuttgart.de/handle/11682/2682)):

![Generalized Component Diagram (Example)](/artifact-templates/images/ZIO-AbstractComponentModelSketch.png)

Note that this diagram operates on a meta level; it might be part of a reference architecture, but does not part of a concrete solution architecture (the generic candidate component would have to be translated into domain-specific components for that).

<!-- Methods have an architecture too, so our DPR overview figure can be seen as a container diagram. We also use user stories (in activity template) -->


### Tools
<!--From AA, should call out what one needs to be able to do on beginner, intermediate, advanced level; as a team -->

Common choices include:

* Any drawing tool or whiteboards (both classic and software-supported)
* C4 tools such as Structurizr
* UML tools


### Hints and Pitfalls to Avoid (Common Pitfalls)
<!--See ART, don’t overdo etc.-->

* Do not confuse logical and physical model elements; this diagram shows the logical structure. The interactions between the components in selected usage scenarios should be specified as well (for instance, representative cases or particularly challenging design hot spots such as peak load processing and error handling). 
* Decide for a leading decomposition type, for instance, functional/domain-driven versus technical. Apply decomposition criteria and strategies such as those in [Service Cutter](https://github.com/ServiceCutter/ServiceCutter/wiki/Coupling-Criteria) to identify candidate components.   
* Do not create a single component for each and every class (in object-oriented programs), but group classes to achieve cohesion, which makes the design change-friendly. <!-- TODO (v2) refer to integrators and disintegrators in "Software Architecture: The Hard Parts" -->
* Measure coupling and cohesion as the design and its implementation evolve. Consider architectural and interface [refactoring](https://interface-refactoring.github.io/) to improve the design as desired qualities and their priorities come and go. 
* Do not assume all components have to be implemented; buying products and renting cloud services are valid options as well.


### Origins and Signs of Use
<!-- From PLOPs and from AA-->

Component models and diagrams arguably are as old as the software architecture field (or even older), appearing under various names. <!-- TODO (v2) could add "We find instances of them in classic papers by Fred Brooks and David Parnas." (fact check required) -->

The Component Diagram is one of the four Cs in C4. <!-- Context is featured in a separate template. Containers correspond to architecture overviews. We will not cover classes here. -->

Layering and partitioning is featured in Scott Ambler's publications, see for instance his online essay ["Class Type Architecture: A Strategy for Layering Software Applications"](http://ambysoft.com/essays/classTypeArchitecture.html).


### Related Artifacts and Practices (incl. Alternatives)
<!--in DPR/OLAF and elsewhere-->

Activities:

* [Architecture Modeling](../activities/DPR-ArchitectureModeling.md) activity in DPR

Artifacts:

* Component Interaction Diagram (CID) 
* Architecture [Overview Diagram](DPR-OverviewDiagram.md)
* [Deployment Diagram](DPR-DeploymentDiagram.md)
* Implementation code


### More Information

* Philippe Kruchten introduces the 4+1 model in ["The 4+1 View Model of Architecture"](https://www.researchgate.net/publication/220018231_The_41_View_Model_of_Architecture/link/0046351a4dc4f9da04000000/download).<!-- also feature Rozanski/Woods? -->
* Sparx Systems provides a [UML Tutorial](https://sparxsystems.com/resources/tutorials/uml/use-case-model.html).
* C4 has a [Wikipedia](https://en.wikipedia.org/wiki/C4_model) page.
* arc42 includes a [building block view](https://docs.arc42.org/section-5/) and a [runtime view](https://docs.arc42.org/section-6/).
* Gernot Starke (in German) explains how to create strong diagrams in ["1×1 guter Architekturdiagramme"](https://www.innoq.com/de/articles/2022/09/better-architecture-diagrams/).

### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Component Diagram"
author: Olaf Zimmermann (ZIO)
date: "01, 26, 2023"
copyright: Olaf Zimmermann, 2023 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

<!--
# References
[C-99]: # (Comment: References will be added here automatically when using -bibliography option of pandoc command)
-->

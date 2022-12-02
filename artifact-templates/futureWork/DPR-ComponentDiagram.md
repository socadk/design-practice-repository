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

The [C4 model page](https://en.wikipedia.org/wiki/C4_model) on Wikipedia describes this artifacts as: "decompose containers into interrelated components, and relate the components to other containers or other systems".

<!-- TODO what is a component anyway? how different from class? *candidate*, comes from story splitting and patterns (solution strategy!) -->


### Usage (Produced and Consumed When)
<!--AA/AS/AE, must identify the producing role and the target audience-->

This diagram type is an intermediate artifact, supporting usage scenarios and problem solving strategies such as:

* Divide and conquer, facilitate working in parallel 
* Estimate effort, organize and support buy-vs.-build-vs.-rent decision making  
* Support development with meaningful abstractions, explain difficult parts (design hot spots)

### Template Structure and Notation(s)
<!-- What to do, artifact to produce; minimum, medium maximum diligence/verbosity (?)-->  

Component diagrams often come in boxes-and-arrows form, with the semantics of these diagram elements explained in a legend or standardized. When using UML, for instance, stereotyped classed can be used as boxes.

<!-- ![](/images/NN.png) -->

The [C4 Model](https://c4model.com/) for visualizing software architecture by Simon Brown introduces component models as its third C. <!-- say that SB does not recommend to model the fourth C, but added three several supplemental views later, which makes it a C7, not too different from pragmatic UML use -->

Unified Modeling Language (UML) has a component diagram, but due to language and tool limitations stereotyped class diagrams might also be an adequate choice.


### Example(s)
<!-- Must be concrete, ideally give three ones, one for each verbosity/fidelity level basic, medium, full-->

The following component diagram identified a number of candidate components across logical layers:

![Component Diagram Example](/artifact-templates/images/ZIO-AbstractComponentModelSketch.png)

See C4 website and Lakeside Mutual case for more examples. <!-- Methods have an architecture too, so our DPR overview figure can be seen as a container diagram. We also use user stories (in activity template) -->


### Tools
<!--From AA, should call out what one needs to be able to do on beginner, intermediate, advanced level; as a team -->

* Any drawing tool, whiteboards
* Structurizr
* UML tools


### Hints and Pitfalls to Avoid (Common Pitfalls)
<!--See ART, don’t overdo etc.-->

* Do not confuse logical and physical model elements.
* Do not create a single component for each and every class (in OO program).
* Do not assume all component have to be implemented; buying and renting are options.


### Origins and Signs of Use
<!-- From PLOPs and from AA-->

Component models and diagrams arguably are as old as the software architecture field (or even older), appearing under various names. We find instances of them in classic papers by Brooks, Parnas, etc. <!-- TODO fact check, pointer to example -->

Component Diagram is one of the four Cs in C4. <!-- Context is featured in a separate template. Containers correspond to architecture overviews. We will not cover classes here. -->

Layering and partitioning is featured in Scott Ambler's work, see for instance ["Class Type Architecture: A Strategy for Layering Software Applications"](http://ambysoft.com/essays/classTypeArchitecture.html).


### Related Artifacts and Practices (incl. Alternatives)
<!--in DPR/OLAF and elsewhere-->

* [Architecture Modeling](../activities/DPR-ArchitectureModeling.md) activity in DPR
* [Container Diagram](DPR-ContainerDiagram.md)
* [Deployment Diagram](DPR-DeploymentDiagram.md)
* Implementation code


### More Information

* Philippe Kruchten introduces the 4+1 model in ["The 4+1 View Model of Architecture"](https://www.researchgate.net/publication/220018231_The_41_View_Model_of_Architecture/link/0046351a4dc4f9da04000000/download).<!-- also feature Rozanski/Woods? -->
* Sparx Systems provides a [UML Tutorial](https://sparxsystems.com/resources/tutorials/uml/use-case-model.html).
* [C4 on Wikipedia](https://en.wikipedia.org/wiki/C4_model).
* arc42 [building block view](https://docs.arc42.org/section-5/) and [runtime view](https://docs.arc42.org/section-6/).
* Gernot Starke (in German): ["1×1 guter Architekturdiagramme"](https://www.innoq.com/de/articles/2022/09/better-architecture-diagrams/)

### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Component Diagram"
author: Olaf Zimmermann (ZIO)
date: "11, 25, 2022"
copyright: Olaf Zimmermann, 2022 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

<!--
# References
[C-99]: # (Comment: References will be added here automatically when using -bibliography option of pandoc command)
-->

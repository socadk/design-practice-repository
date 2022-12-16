---
Scope: Entire system
Phases: Design (all levels) 
Roles: Architect (different specializations)
Activities: Architecture modeling 
Abstraction/Refinement Level: Technology/platform-independent
---


Artifact/Template: *Deployment Diagram*
---------------------------------------
<!--Alternate names or candidate names) can be listed as "Also known as " here.-->
a.k.a. Operational View, Physical View

> *A deployment diagram depicts a managed runtime configuration, consisting of physical elements such as compute nodes, storage units, and network connections.*

<!-- TODO bring more content from AA FS and exercise -->

### Motivation (Addressed Information Need) 
<!--Purpose -->

The [C4 model page](https://en.wikipedia.org/wiki/C4_model) on Wikipedia defines "A deployment diagram allows you to illustrate how software systems and/or containers in the static model are mapped to infrastructure."


### Usage (Produced and Consumed When)
<!--AA/AS/AE, must identify the producing role and the target audience-->

Usage scenarios (required for any production environment, including cloud deployments): 

* Project management, logical-physical design interlock
* Capacity planning, hardware procurement, cloud decision making
* Operations, systems management


### Notation(s)
<!-- What to do, artifact to produce; minimum, medium maximum diligence/verbosity (?)--> 

Many custom notations and Domain-Specific Languages (DSLs) for topology modeling and configuration management exist today, for instance coming from cloud providers and CI/CD vendors. Typically rich pictures are used that show:

* Network zones
* Compute and storage nodes, virtual and physical
* Deployment units, installable software
* Infrastructure components such as firewalls, gateways, caches, authenticating proxies, load balancers, management agents and UIs, log archives and credentials vaults, database replicators
* Network connections and other dependencies between these diagram elements

UML is a valid and popular choice and has a dedicated diagram type.

<!--
TODO from old appArch slides, no fact sheet (?). Security, WLM, show my PoWS zone model (classic!)

Key concepts: nodes, DUs (one per logical layer!). DSLs, vendor-specific icon sets, e.g. AWS
-->

### Example(s)
<!-- Must be concrete, ideally give three ones, one for each verbosity/fidelity level basic, medium, full-->

The deployment units and physical tiers in an order management scenario in telecommunications may look as follows (in a hot standby or load balancing configuration):

![Deployment Diagram Example](/artifact-templates/images/ZIO-DeploymentDiagramExample.png)


### Tools
<!--From AA, should call out what one needs to be able to do on beginner, intermediate, advanced level; as a team -->

* Any drawing tool, whiteboards
* Structurizr
* UML tools


### Hints and Pitfalls to Avoid (Common Pitfalls)
<!--See ART, don’t overdo etc.-->

* Do not start too late, develop component diagram and deployment diagram hand in hand.
* Model iteratively, starting on a conceptual, platform- and technology-independent level to promote qualities such as design portability and cloud agnosticism.
* Follow the modeling hints and guidelines from [Gernot Starke](https://www.innoq.com/en/articles/2022/09/better-architecture-diagrams/) (in German for the time being), Simon Brown, and others.


### Origins and Signs of Use
<!-- From PLOPs and from AA-->

* IBM ADS and System Integration/Global Services Method
* UML deployment diagrams <!--, since Version n.m -->
* C4 Model, as a later addition, not part of the original four C). 

See for instance the book chapter "Architectural Knowledge in an SOA Infrastructure Reference Architecture" ([PDF](http://soadecisions.org/download/SOAD-4AKMBookv11.pdf)). 

<!-- TODO bibtex, also see https://www.ifi.uzh.ch/dam/jcr:00000000-6e46-e644-0000-00004804109f/Reading.zip (ADS and more) -->


### Related Artifacts and Practices (incl. Alternatives)
<!--in DPR/OLAF and elsewhere-->

* [Architecture Modeling](../activities/DPR-ArchitectureModeling.md) activity
* The [C4 Model](https://c4model.com/) for visualizing software architecture by Simon Brown <!-- say that SB does not recommend to model the fourth C, but added three several supplemental views later, which makes it a C7, not too different from pragmatic UML use -->
* Unified Modeling Language (UML), see below


### More Information

* The notion of operational models on different levels of refinement (conceptual, specified, physical) is explained in ["Architectural Knowledge in an SOA Infrastructure Reference Architecture"](http://soadecisions.org/download/SOAD-4AKMBookv11.pdf).
* Philippe Kruchten introduces the 4+1 model in ["The 4+1 View Model of Architecture"](https://www.researchgate.net/publication/220018231_The_41_View_Model_of_Architecture/link/0046351a4dc4f9da04000000/download). <!-- also feature Rozanski/Woods? -->
* Sparx Systems provides a [UML Tutorial](https://sparxsystems.com/resources/tutorials/uml/use-case-model.html).
* arc42 has a [deployment view](https://docs.arc42.org/section-7/) and a [runtime view](https://docs.arc42.org/section-6/).

<!-- Simon Brown's presentations and website -->


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Deployment Diagram"
author: Olaf Zimmermann (ZIO)
date: "12, 16, 2022"
copyright: Olaf Zimmermann, 2022 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

<!--
# References
[C-99]: # (Comment: References will be added here automatically when using -bibliography option of pandoc command)
-->

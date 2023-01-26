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

> *A deployment diagram depicts a runtime configuration of a software-intensive system, consisting of physical elements such as compute nodes, storage units, and network connections. It may include information about the placement of application parts as well as systems management devices.*

<!-- TODO bring more content from AA FS and exercise -->

### Motivation (Addressed Information Need) 
<!--Purpose -->

The [C4 model page](https://en.wikipedia.org/wiki/C4_model) on Wikipedia defines "A deployment diagram allows you to illustrate how software systems and/or containers in the static model are mapped to infrastructure." The static model is expressed in instances of overview/container diagrams as well as component diagrams.


### Usage (Produced and Consumed When)
<!--AA/AS/AE, must identify the producing role and the target audience-->

This artifact is required for any production environment, including cloud deployments. Its usage scenarios include: 

* Project management, logical-physical design interlock
* Capacity planning, hardware procurement, and hosting decision making (on-premise? in the cloud?)
* Preparation and execution of system operations, including systems management activities.


### Notation(s)
<!-- What to do, artifact to produce; minimum, medium maximum diligence/verbosity (?)--> 

Many custom notations and [Domain-Specific Languages (DSLs)](https://en.wikipedia.org/wiki/Domain-specific_language) for topology modeling and configuration management exist today, for instance, coming from cloud providers and CI/CD vendors. Oftentimes, informal rich pictures are used that visualize the following model elements and their relationships:

* Network zones
* Compute and storage nodes, virtual and physical
* Deployment units, installable software
* Infrastructure components such as firewalls, gateways, caches, authenticating proxies, load balancers, management agents and UIs, log archives and credentials vaults, database replicators
* Network connections and other dependencies between these diagram elements

UML is a valid and popular choice and has a dedicated diagram type of this name, [deployment diagram](https://www.uml-diagrams.org/deployment-diagrams-overview.html).

<!--
TODO from old appArch slides, no fact sheet (?). Security, WLM, show my PoWS zone model (classic!)

Key concepts: nodes, DUs (one per logical layer!). DSLs, vendor-specific icon sets, e.g. AWS
-->

### Example(s)
<!-- Must be concrete, ideally give three ones, one for each verbosity/fidelity level basic, medium, full-->

The deployment units and physical tiers in an order management scenario in telecommunications may look as follows (in a hot standby or load-balancing configuration):

![Deployment Diagram Example](/artifact-templates/images/ZIO-DeploymentDiagramExample.png)

The locations contain one or more nodes. The mid-tier, for instance, is called Enterprise Application Data Center in this example. Two nodes are configured redundantly (in terms of application deployment units, DUs) to support load balancing and standby/failover capabilities (to improve reliability and availability). A UML note comments on architectural decisions still required (while decisions already made manifest themselves in the diagram).

### Tools
<!--From AA, should call out what one needs to be able to do on beginner, intermediate, advanced level; as a team -->

Common tool choices include: 

* Any drawing tool, possibly supported by domain-specific templates, icon collections, stencil libraries and so on. 
* Online and physical whiteboards
* UML tools such as Enterprise Architect 
* C4-enabled tools such as Structurizr

Infrastructure architecture and system management are fields and competence areas in their own right; therefore, many practices, notations, and tools exist that are out of our scope here.

### Hints and Pitfalls to Avoid (Common Pitfalls)
<!--See ART, don’t overdo etc.-->

* Do not start the operational design too late, but develop component diagram and deployment diagram hand in hand.
* Model iteratively, starting on a conceptual, platform- and technology-independent level to promote qualities such as design portability and cloud agnosticism.
* Follow the general modeling hints and guidelines from [Gernot Starke](https://www.innoq.com/en/articles/2022/09/better-architecture-diagrams/) (in German for the time being), Simon Brown, and others to ensure readability and maintainability.
* Keep the diagram current as the design evolves, and the hosted system advances throughout its lifecycle.


### Origins and Signs of Use
<!-- From PLOPs and from AA-->

Deployment diagrams have a long history:

* IBM ADS and System Integration/Global Services Method
* Unified Modeling Language (UML) <!-- deployment diagrams, since Version n.m -->
* C4 Model, as a later addition (not part of the original four C). 

See the book chapter "Architectural Knowledge in an SOA Infrastructure Reference Architecture" for motivation and usage in context ([PDF](http://soadecisions.org/download/SOAD-4AKMBookv11.pdf)). 

<!-- TODO bibtex, also see https://www.ifi.uzh.ch/dam/jcr:00000000-6e46-e644-0000-00004804109f/Reading.zip (ADS and more) -->


### Related Artifacts and Practices (incl. Alternatives)
<!--in DPR/OLAF and elsewhere-->

* [Architecture Modeling](../activities/DPR-ArchitectureModeling.md) activity
* The [C4 Model](https://c4model.com/) for visualizing software architecture by Simon Brown <!-- say that SB does not recommend to model the fourth C, but added three several supplemental views later, which makes it a C7, not too different from pragmatic UML use -->
* Unified Modeling Language (UML) deployment diagrams


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
date: "01, 26, 2023"
copyright: Olaf Zimmermann, 2023 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

<!--
# References
[C-99]: # (Comment: References will be added here automatically when using -bibliography option of pandoc command)
-->

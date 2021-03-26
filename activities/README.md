[Git Pages Home](https://socadk.github.io/design-practice-repository)
[Artifacts Overview](https://socadk.github.io/design-practice-repository/artifact-templates)

## DPR: *Activities in Service Design and Agile Architecting*

### Context and Motivation 
As responsible software engineers, we do not like to be bossed around. Decentralized decision making and autonomous teams might not be listed explicitly as values in the [Agile Manifesto](https://www.agilealliance.org/agile101/the-agile-manifesto/), but are certainly valued and practiced a lot in agile teams and organizations.

Agile does equal anarchy; agile teams actually are quite (self-)disciplined and employ a number of ceremonies (a.k.a. practices). Most of them are collected and commented upon elsewhere, for instance try the [Subway Map to Agile Practices](https://www.agilealliance.org/agile101/subway-map-to-agile-practices/) and [glossary](https://www.agilealliance.org/agile101/agile-glossary/) by the Agile Alliance. Here in DPR, we focus on agile architecting and service/API design and collect some of the method elements, tactics, practices, etc. that served us well or that are frequently recommended, for instance in microservices books. These activities consume and produce the [artifacts](../artifact-templates) listed in a sibling folder, possibly supported by checklists and templates; they are owned and performed by one or more of the personas and [roles](../roles) also documented in this repository.


[Git Pages Home](https://socadk.github.io/design-practice-repository)
[Activities Overview](https://socadk.github.io/design-practice-repository/activities)
One should never forget the first rule of method adoption: 

> *If in doubt, leave it out (or: do not create a big ball of method mud).*

Other general hints for all design and modeling activities are: <!-- two typos on https://www.ifs.hsr.ch/index.php?id=13195&L=4 (in hint not copied here) -->

* Always write for a particular target audience (stakeholders with concerns) and model purposefully.
* Follow a "good enough" approach to decision making and documentation.
* Apply patterns and other reusable assets to reduce risk and cut cost.


### Activities Specific to Service/API Design

<!-- TODO (v2) add simple miro diagram (with hyperlinks!) or table here -->

Particularly relevant for service/API design are:

* [Strategic DDD](DPR-StrategicDDD.md) a.k.a. context mapping 
* [Tactic DDD](DPR-TacticDDD.md) models, [Event Storming](https://contextmapper.org/docs/event-storming/) results, and those from other analysis practices 
* *Featured:* [Stepwise/Incremental Service Design](SDPR-StepwiseServiceDesign.md) (contract-first)
* [User Interface Mocking](DPR-UserInterfaceMocking.md) (for APIs providing [Frontend Integration](https://microservice-api-patterns.org/patterns/foundation/FrontendIntegration) capabilities)
* Integration Story Telling (for [Backend Integration](https://microservice-api-patterns.org/patterns/foundation/BackendIntegration)) (to be continued)

<!--
* Service Modeling methods and EIP integration flows (tbd)
-->


### Activities General Software Engineering/Architecture:

#### Architectural Analysis

* Analysis of Architecturally Significant Requirements (ASRs), both functional and quality-oriented. Activities may include:
    * Relevance assessment and prioritization, which can be supported by a checklist of ASR criteria (see blog post ["Architectural Significance Test"](https://medium.com/olzzio/architectural-significance-test-9ff17a9b4490) for the time being)
    * User Story-Based Iteration Planning, Story Mapping and [Story Splitting](DPR-StorySplitting.md) 
    * [Use Case](../artifact-templates/DPR-UseCase.md) Modeling (full vs. brief)
    * [SMART Non-Functional Requirement (NFR) Elicitation](DPR-SMART-NFR-Elicitation.md), including value-, risk-, and cost-based prioritization of NFRs, proposed in an article by Martin Glinz ([PDF](https://www.researchgate.net/publication/3249473_A_Risk-Based_Value-Oriented_Approach_to_Quality_Requirements)); very much in line with George Fairbank's advice on [Just Enough Software Architecture](https://www.georgefairbanks.com/book/). [Quality storming](https://speakerdeck.com/mploed/quality-storming) has been proposed by Michael Ploed more recently. 
    * Specification of [Agile landing zones](http://wirfs-brock.com/blog/2011/07/28/agile-landing-zones/) (Rebecca Wirfs-Brock) 
<!--
    * Quality story telling (two flavours: extended user story, standalone)
    * PLANGUAGE, Sophisten templates) 
-->

#### Architectural Synthesis

* [Architecture Modeling](DPR-ArchitectureModeling.md)
    * "Architecture Overviewing" and Strategic Architecting
* Quality- and Pattern-Oriented Design 
	* [Attribute-Driven Design (ADD) 3.0](https://resources.sei.cmu.edu/library/asset-view.cfm?assetid=436536) 
	* Pattern-Oriented Software Architecture (POSA) book series, Volume 4 in particular @Buschmann:2007
* Component Identification and Modeling 
    <!-- * C4 (which extend into C5+2, adding Connectors, Context and Concerns) -->
    * [Responsibility-Driven Design](http://www.wirfs-brock.com/PDFs/A_Brief-Tour-of-RDD.pdf) introduces role stereotypes and made CRC cards popular.
    * "UML Components" by John Cheesman and John Daniels suggests steps to advance from use cases to components @CheesmanDaniels:2000
* [Architectural Decision Capturing](./DPR-ArchitecturalDecisionCapturing.md)
    * Yielding [Y-statements](../artifact-templates/DPR-ArchitecturalDecisionRecordYForm.md), (M)ADRs or other forms of ADRs as artifacts 
    * Most Responsible Moment (MRM) scoring for ADs (dynamic?) <!-- MRM not LRM -->
* Domain-Driven Design (DDD)
    * Context Mapping in [Strategic DDD](DPR-StrategicDDD.md) <!-- and context maps (practice. vs. artifact) -->
    * [Tactic DDD](DPR-TacticDDD.md)
* User Interface (UI) Design
    * [User Interface Mocking](./DPR-UserInterfaceMocking.md)
* Coding the Architecture 
    * [Architecturally Evident Coding Styles](https://resources.sei.cmu.edu/asset_files/Presentation/2013_017_001_48651.pdf)
* Operational Modeling
    * As proposed by the IBM Global Services Method (see [here](https://www.ifi.uzh.ch/dam/jcr:00000000-10dc-dd8d-ffff-ffffa2484ab4/UniZH_HS2011_5_DevelopingSolutionArchitecture.pdf))
<!-- * DevOps (or: ArchOps?) -->


#### Architectural Evaluation/Assessments

Both lean/light and full-fledged techniques have been proposed: 

* [Tiny Architectural Review Approach (TARA)](https://www.artechra.com/media/writing/JSS-Woods-IndustrialArchitecturalAssessmentUsingTARA.pdf)
* [Decision-Centric Architecture Reviews (DCAR)](https://ieeexplore.ieee.org/document/6449237)
* [Architetcure Tradeoff Analysis Method (ATAM)](https://en.wikipedia.org/wiki/Architecture_tradeoff_analysis_method)
<!-- * ARID (tbd) -->

<!-- * ZIO review Qs and advice (see Qs in mails to CS end of 2015) -->


#### Architectural Evolution

* Architectural Roadmapping, described by Eltjo Poort in an IEEE Software [Insights installment](https://ieeexplore.ieee.org/document/7725228?arnumber=7725228)
* Risk-driven prioritization, introduced in George Fairbank's "Just Enough Software Architecture" (@Fairbanks:2010) <!-- hoisting?) -->
* Thomas Ronzon's [Software Retrofit](https://www.researchgate.net/publication/296480151_Software_Retrofit_in_High-Availability_Systems_When_Uptime_Matters)

Stefan Murer's book on "Managed Evolution" lists many more, and the [Evolution category in MAP](https://microservice-api-patterns.org/patterns/evolution/) collects patterns for API versioning and life cycle management.

#### IT Strategy and Enterprise/Program Architecture Work 

A number of frameworks and approaches for scaling agile exist, including: 

* [SAFe](https://www.scaledagileframework.com/)
* [Large-scale Scrum (LeSS)](https://less.works/)
* [Disciplined Agile Delivery](https://en.wikipedia.org/wiki/Disciplined_agile_delivery) <!-- at PMI now, less information available online -->
<!-- * to be continued -->

Gregor Hohpe's IT/Software [Architect Elevator](https://architectelevator.com/) always is worth a ride to the upper levels (and back).


### Tool Support

Many of the activities (techniques and practices, that is) collected in this repository are partially or fully supported by tools; these tools then help produce the output artifacts. 

Some of the ones we have contributed to, or work on, are:

* [Context Mapper](https://contextmapper.org/) for domain modeling
* Editor and Linter for [Microservice API Description Language (MDSL)](https://microservice-api-patterns.github.io/MDSL-Specification/) for service contract design
* Architectural decision capturing and modeling: [MADR](https://github.com/adr/madr), [e-ADR](https://github.com/adr/e-adr), [ADMentor](https://github.com/IFS-HSR/ADMentor)

More specific information, also about other tools, can be found on the individual pages.


### More Information 

* See [top-level readme](../README.md).
* See [background information folder](../background-information).


## DPR Metadata

```yaml
title: "Design Practice Repository (DPR): Activities (Practices, Techniques) Overview"
author: Olaf Zimmermann (ZIO)
date: "03, 17, 2021"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
```

### License

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.

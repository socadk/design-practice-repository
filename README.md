<!--
# SPDX-FileCopyrightText: 2020 Copyright Olaf Zimmermann https://ozimmer.ch/about/
#
# SPDX-License-Identifier: CC-BY-4.0
-->

# Software/Service/API Design Practice Repository (DPR)

<!-- "DPR" pronounced "deeper"... and Se (or C?) can be pronounced "see", so [O] see deeper... or "steeper" ;-) -->

*Welcome to DPR (pronounced "deeper")!* This public repository collects method elements and practices from various methods (old and new) that are applicable to service-oriented analysis and design (and beyond).

## Target Audience 

This repository targets the following software engineering roles, ordered from specific to generic:

* [(Micro-)Service](https://medium.com/olzzio/seven-microservices-tenets-e97d6b0990a4) designers
* [API product managers/owners](/roles/SDPR-APIProductOwner.md), developers, testers, maintainers 
* Software architects specializing on application integration and APIs 
* Any software [architect](/roles/DPR-ApplicationArchitectRole.md)
* Any software engineer


## Overview and Quick Links

DPR is organized around *artifacts*, *templates*, *activities* and *techniques* which are applied/performed/used by team members taking one or more software engineering *roles*:

<img class="shadow-lg" height="70%" width="70%" src="./images/DPR-MetamodelMiro.png" alt="DPR Concepts (Domain Model)"/>

<!-- not possible here (?): 
<object height="100%" width="100%" data="./images/DPR-MetamodelMiro.svg" alt="DPR concepts visualized with miro">
</object>
-->

DPR contains three types of method/practice elements:

* The [artifact and template descriptions](artifact-templates) might be a good first stop. Try [Y-shaped Architecture Decision Records (ADRs)](artifact-templates/DPR-ArchitecturalDecisionRecordYForm.md).
* Next up would be [activities and techniques](activities). You may want to start with our [Stepwise Service Design](activities/SDPR-StepwiseServiceDesign.md) practice.
* Also there, but not very deeply populated are the [roles and personas](./roles): [Application Architect](roles/DPR-ApplicationArchitectRole.md), [API Product Owner](roles/SDPR-APIProductOwner.md).

The activities and artifacts that we have collected so far are:

![DPR Activities, Artifacts and their dependencies](/images/DPR-ActivityArtifactDependencies.png)

There is an [introductory blog post](https://medium.com/olzzio/design-practice-repository-dpr-ed5e9d0e91cd). And the [quick start tutorial](tutorials/DPR-Tutorial0.md) takes you through the repository structure in a small sample scenario. The deeper [API design tutorial](tutorials/DPR-Tutorial1.md) (in draft state) is a good starting point if you like to learn by example (and are willing to invest a little more time). <!-- Not there yet: [examples](./examples) --> 

We also provide some [background information](./background-information) on methods and practices, including a [bibliography](/./background-information/literature.md).

### *News*

Version 1.2, released on December 7, 2020, adds one activity and one artifact:

* [Story splitting](/activities/DPR-StorySplitting.md) for planning and design purposes
* [Component, Responsibility, Collaboration (CRC) cards](artifact-templates/DPR-CRCCard.md), an OOAD veteran repurpose for architecture design 

Tutorial 1 also was enhanced, as well as several other activity and artifact descriptions. We also added (even) more pointers to background information. 


## Terminology Clarification

### (Micro-)Services and SOA Definitions

According to Martin Fowler, a service is a component with a remote Application Programming Interface (API). And services and their APIs [come in different sizes](https://ozimmer.ch/patterns/2020/07/06/MicroservicePositions.html), hence an engineering approach to designing them is required. That's all there is to say!

If you want more conceptual clarifications, see this [blog post](https://ozimmer.ch/patterns/2020/07/06/MicroservicePositions.html), this [presentation](https://vss.swa.univie.ac.at/2019/wp-content/uploads/2019/08/ZIO-DomainDrivenServiceDecompositionMAP2019v13p.pdf), or this [article](http://rdcu.be/mJPz) for a definition of microservices and positioning as an implementation approach to SOA.

The [Microservice API Patterns (MAP) website](https://microservice-api-patterns.org/), [introduction](https://drops.dagstuhl.de/opus/volltexte/2020/11826/), and [pattern papers](https://microservice-api-patterns.org/publications#interface-evolution-patterns--balancing-compatibility-and-extensibility-across-service-life-cycles) go even deeper and introduce terms such as endpoint, operation, and message representations. 

### Situational Method Engineering

DPR applies a best-of-breed approach. Our metamodel adopts parts of Chapter 2 from ["An Architectural Decision Modeling Framework for Service-Oriented Architecture Design"](https://elib.uni-stuttgart.de/handle/11682/2682)(SOAD): 

![DPR metamodel (from SOAD PhD thesis)](/images/SOADMethodMetamodel.png)

This terminology maps to that of other method engineers like this<!-- TODO (v2): review terms again; RUP: https://www.ibm.com/developerworks/rational/library/content/03July/1000/1251/1251_bestpractices_TP026B.pdf -->:

| This repository | Agile community ([glossary](https://www.agilealliance.org/agile101/agile-glossary/))| OMG SPEM 2.0 ([PDF](https://www.omg.org/spec/SPEM/2.0/PDF)) | [Open Unified Process (UP)](https://download.eclipse.org/technology/epf/OpenUP/published/openup_published_1.5.1.5_20121212/openup/index.htm) and other methods |
|-|-|-|-|
| [Role](./roles) | Persona, team member | Role | Worker, stakeholder |
| [Activity](activities) (with steps) | n/a (not plan-driven, backlog item types come close)  | Task (with steps) | RUP: activity, OpenUP: task |
| [Artifact](artifact-templates) | No direct pendant (template? documentation?) | Work product | UP: artifact |
| Technique (part of activity description)| Practice | No direct pendant (tool comes close) | UP: guidance, guideline |

<!-- In SOAD, a phase has tasks, which in turn has steps; DPR is flat at present (folder) -->

<!-- SEMAT Essence V1.2 became an OMG standard in July 2018 (300 pages): http://semat.org/documents/20181/57862/formal-18-10-02.pdf/866c80c0-cdc8-488b-bcf8-0c67cb60b5d7 -->

In short, *activities* describe work to be done, *techniques* (or practices) help doing so; more than one technique might support an activity. For instance, use case modeling and user story telling are two techniques to elicit functional requirements. *Artifacts* are deliverables of activities, *templates* suggest content and structure for them. For example, an architectural decision log (an artifact) may come as a [Nygard Architecture Decision Record (ADR)](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions), as a [Y-Statement](https://medium.com/@docsoc/y-statements-10eb07b5a177), as a [Tyree/Akerman table](https://ieeexplore.ieee.org/document/1407822), etc. *Techniques* and tools support and/or partially automate the activities.

The above terms establish an [ubiquitous language](https://martinfowler.com/bliki/UbiquitousLanguage.html) (or domain model) of service design and agile architecting &mdash; in the (bounded) context of this repository. &#128521; 

*Note:* Method adoption is eased if you make your methods [mighty](https://ecsa2020.disim.univaq.it/details/ecsa-2020-keynotes/3/Mighty-Methods-Four-Essential-Tools-for-Every-Software-Architect-s-Silver-Toolbox).


##  Acknowledgments 

The creation and release of DPR was partially supported by the project "Domain-Driven Digital Service Engineering" funded by the [Hasler Foundation](https://haslerstiftung.ch/en/welcome-to-the-hasler-foundation/).

Contributors (input, technical writing, feedback): 

* [Olaf Zimmermann (ZIO)](https://ozimmer.ch)
* [Mirko Stocker (STX)](https://www.linkedin.com/in/misto/)

[Stefan Kapferer](https://stefan.kapferer.ch/about/) and [Oliver Kopp](https://ozimmer.ch/practices/2020/10/14/github.com/koppor/) reviewed selected repository content and structure. Many members of our professional networks provided input and/or inspiration through discussions, workshops, joint client projects and many other ways. Thank you!


## Getting Involved 
If you would like to help improve this collection of software/service/API design practices:

* Feel free to create GitHub issues.
* Submit pull requests. If you do so, we assume that you own the IP you submit, agree to open source it under the license of this repository and therefore comply with this [Developer Certificate of Origin](https://developercertificate.org/). 
    * The ["contributing" folder](./contributing) has templates for artifact, activity, role descriptions.
* [Contact us](https://ozimmer.ch/about/) to discuss collaboration and integration opportunities.

More information can be found [here](contributing/CONTRIBUTING.md).


## DPR Metadata 

```yaml
title: Design Practice Repository (DPR)
owner: Olaf Zimmermann (ZIO)
date: "03, 16, 2021"
copyright: Copyright 2020-2021 Olaf Zimmermann (unless noted otherwise). All rights reserved.
```

<!-- could use ISO date format yyyy-mm-dd 2. add SPDX license identifier and metadata -->

### License

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.

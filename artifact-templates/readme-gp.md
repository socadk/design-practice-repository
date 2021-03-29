
### [Git Pages Home](https://socadk.github.io/design-practice-repository)

## DPR: *Artifact/Templates Index*

### Context and Motivation 

Checklists and templates can speed up the creation of artifacts, and help ensure their quality. They also promote a common language among designers, reviewers, managers, and other design stakeholders. These goals can only be achieved if the checklist, templates, and any other *artifacts* are grounded in practice and engineered with a "less is more" spirit, following the first law of method engineering and adoptions established in the [activities overview](../activities): "if in doubt, leave it out".

The Agile Alliance lists more than 100 agile practices and concepts in its [Agile Glossary](https://www.agilealliance.org/agile101/agile-glossary/). Selecting and applying them well requires experience, training, and/or consultancy. On the other end of the spectrum, more traditional plan-driven methods tend to impose processes on teams, which is not always appropriate and often not received well. Parts of the agile community <!--, for instance [Clean Agile](https://www.pearson.com/us/higher-education/program/Martin-Clean-Agile-Back-to-Basics/PGM2604771.html),--> see methods as "training wheels" only.

#### What is different in DPR? 
We employ a best-of-both-worlds approach here: This [artifact-templates folder](.) collects commonly created artifacts and proven templates for them, the [activities folder](../activities) suggests (but does not norm) a light process through the creation of these artifacts by one or more of these [roles](../roles). Feel free to deviate from it, and do not forget the second rule of method adoption: 

> *Do not follow templates blindly, but adopt them to your needs (or: no [cargo cult](https://en.wikipedia.org/wiki/Cargo_cult) please).*

Never fill out a template just because. If you cannot think of a benefit for a particular reader, skip its creation (and remember why).


### Artifact and Template Overview

<!-- TODO (v2) add simple miro diagram (with hyperlinks!) or table here -->

#### Specific to API/Service Design

Object-Oriented Analysis and Design (OOAD) and Domain-Driven Design (DDD) are particularly relevant for API and service design: 

* [DDD Context Maps](DPR-StrategicDDDContextMap.md) as outcome of Strategic DDD (FAST Bounded Contexts)
* [Domain Model (analysis level)](DPR-DomainModel.md) as outcome of Tactic DDD <!-- CE: 3x URI -->
* More elaborated [Domain Model (design level)](DPR-DomainModel.md), also an outcome of Tactic DDD

The service/API design-specific artifacts/templates in DPR are: 

* [Candidate Endpoint List](SDPR-CandidateEndpointList.md) 
* [Refined Endpoint List](SDPR-RefinedEndpointList.md)
* [API Description](SDPR-APIDescription.md), a.k.a. business and technical service contract (captured as a [API Description pattern](https://microservice-api-patterns.org/patterns/foundation/APIDescription)) in the [Microservice API Patterns (MAP)](https://microservice-api-patterns.org/) language 
* [Service Level Agreement](SDPR-ServiceLevelAgreement.md) (also a [pattern in MAP](https://microservice-api-patterns.org/patterns/quality/qualityManagementAndGovernance/ServiceLevelAgreement))

#### General Software Engineering/Software Architecture

Requirements analysis and conversation with stakeholders can be captured in the form of: 
<!-- to be described with the help of the template:-->

* [User Stories](DPR-UserStory.md)
* [Use Cases](DPR-UseCase.md)
* [Quality Attribute Scenarios (QAS)](futureWork/DPR-QualityAttributeScenario.md) and other templates for NFR/QA elicitation <!-- quality stories, Sophisten, PLANGUAGE -->
* [System Context Diagram (SCD)](futureWork/DPR-SystemContextDiagram.md)

(Architecture) design work is usually documented both textually and visually:

* [Architecture Overview Diagram (AOD)](futureWork/DPR-ArchitectureOverviewDiagram.md) a.k.a. Container Diagram
* [Component Diagram](futureWork/DPR-ComponentDiagram.md), providing a logical [view](https://www.ibm.com/developerworks/rational/library/08/0108_cooks-cripps-spaas/index.html) on the architecture <!-- The four views in C4 actually map to SCD, AOD/OML0, CML0, CML1) -->
* [Component, Responsibility, Collaborations (CRC) cards](DPR-CRCCard.md)
* Component Interaction Diagrams (CIDs), often expressed as UML sequence diagrams
* Integration flows (a.k.a. "Gregorgrams")
* Deployment diagram (providing an operational, physical view)
* [Y-Statements](DPR-ArchitecturalDecisionRecordYForm.md) and other ADR formats
* Architectural refactoring template (from HSR FHO [ARC project](https://ifs.hsr.ch/Architectural-Refactoring-for.12044.0.html?&L=4))

Some evaluation and assessment templates are:

* Strength Weaknesses Opportunities Threats (SWOT) tables
* Architecture review report
* [API/Code Review Checklist](futureWork/SDPR-APIReviewChecklist.md)


### More Information

See [top-level readme](../README.md) for a general motivation "why DPR?". See [background information folder](../background-information) for design principles of DPR and a recap of method and practice engineering from the 1990s to present.


## DPR Metadata

```yaml
title: "Design Practice Repository (DPR): Templates and Artifacts Overview"
author: Olaf Zimmermann (ZIO)
date: "03, 27, 2020 (Source: Project DD-DSE)"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
```

### License

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.

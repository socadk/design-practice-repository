---
Category: Architecture  
Activities: SMART NFR Elicitation, Architectural Capturing, Architecture Modeling, Stepwise Service Design
---

Role: *Application and Integration Architect*
---------------------------------------------
also known as: Coding Architect (to indicate strong connection to development)

### Persona 
<!--Name of stakeholder (of architecture and architectural artifacts) and its main concerns-->
Archie Tekt, who first appeared in 2003 in ["Perspectives on Web services"](https://soadecisions.org/atb.htm) by Olaf Zimmermann, Mark Tomlinson, and Stefan Peuser, cares about the structure of and decisions about code packages and configuration artifacts, as well as their dependencies. Development should be productive, the developed software simply and quick to change. It should meet its performance, scalability, and security requirements at runtime. Archie primarily uses the logical and the implementation viewpoints (in the [4+1](https://en.wikipedia.org/wiki/4%2B1_architectural_view_model) view model), but occasionally also gets involved with the scenario viewpoint and the process viewpoint (for instance, in reviews).

Philippe Kruchten has an article ["What do software architects really do?"](https://pkruchten.files.wordpress.com/2010/05/kruchten_2008_journal-of-systems-and-software.pdf) that describes the persona well. But do not forget that architects (like all people) are different!

Olaf Zimmermann's blog ["The Concerned Architect"](https://ozimmer.ch/blog/) provides short articles with examples of everyday problems (and solutions to them, including those that made it into DPR already). 


### Information and Modeling Need
<!-- derived from role responsibilities (articulated in the form of user stories)-->

Application architects worry about and need: 

* Stakeholder concerns, project budgets 
* [Quality attributes](../activities/DPR-SMART-NFR-Elicitation.md)
* [Decision rationale](../activities/DPR-ArchitecturalDecisionCapturing.md)
* Quick overviews of external interfaces and internal structure of the produced software and other outcomes of [architecture modeling](../activities/DPR-ArchitectureModeling.md)
* Dependencies, licenses

### Collaborations

* [API Product Owner/Manager](./SDPR-APIProductOwner.md)
* Developers (who may also take architectural responsibilities)
* and many more (all team members and external stakeholders, basically)

### Consumed/Produced Artifacts and Applied Practices


|**Phase**| Consumed | Produced | Comments |
|:-|:-----:|:------:|:--------:|
| Analysis | [User Stories](../artifact-templates/DPR-UserStory.md), [Use Cases](../artifact-templates/DPR-UseCase.md) | Non-functional requirements, for instance in the form of Quality Attribute Scenarios | Iteratively refined |
| Design | Legacy system descriptions, external interfaces | [CRC Cards](../artifact-templates/DPR-CRCCard.md), Decision log comprising of ADRs (for instance [Y-Statements](../artifact-templates/DPR-ArchitecturalDecisionRecordYForm.md)), architecture design models | Both produced and consumed |
| Implementation and test | Code, test specifications, and reports | Reviews | Not in scope of DPR at present |
| Evolution and maintenance | Change requests, bug reports | Architectural refactorings | Not in scope of DPR at present |

The applied practices include [Story Splitting](../activities/DPR-StorySplitting.md) and  [Strategic Domain-Driven Design](../activities/DPR-StrategicDDD.md).


### More Information

See the guest editorial of the special theme issue of IEEE Software ["The Role of the Software Architect in the Digital Age"](http://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=7725214) by Gregor Hohpe, Ipek Ozkaya, Uwe Zdun, and Olaf Zimmermann for a retrospective of the field and a discussion of role vs. responsibility. 

[The Architect Elevator](https://architectelevator.com/) visits the different facets of the profession, provides tips and tricks for being successful on each level, and gives additional reading recommendations.

<!-- 
Getting Started:

1) https://www.isaqb.org/de/blog/the-new-software-architecture-foundation-curriculum/
2) tbc

Experience can't be taught but has to be gained. Once you have some, read these books: 
1) Design It! 
2) Just Enough Software Architecture
3) Software Architect Elevator 
-->


## DPR Metadata

```yaml
title: "Design Practice Repository (DPR): Application Architect"
author: Olaf Zimmermann (ZIO)
date: "04, 08, 2021"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```
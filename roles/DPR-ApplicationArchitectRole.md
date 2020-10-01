---
Category: Architecture  
Activities: SMART NFR Elicitation, Architectural Capturing, Architecture Modeling, Stepwise Service Design
---

Role: *Application and Integration Architect*
--------------------------------------------
<!--Alternate names or candidate names) can be listed as "Also known as " here.-->
a.k.a. Coding Architect (to indicate strong connection to development)

### Persona 
<!--Name of stakeholder (of architecture and architectural artifacts) and its main concerns-->
Archie Tekt cares about the structure of and decisions about code packages and configuration artifacts, as well as their dependencies. Development should be productive, the developed software simply and quick to change. It should meet its performance, scalability and security requirements at runtime. Archie primarily uses the logical and the implementation viewpoints (in te 4+1 model), but occasionally also gets involved with the scenario viewpoint and the process viewpoint (e.g., in reviews).

P. Kruchten has an article ["What do software architects really do?"](https://pkruchten.files.wordpress.com/2010/05/kruchten_2008_journal-of-systems-and-software.pdf) that describes the persona well. But do not forget that architects (like all people) are different!


### Information and Modeling Need
<!-- derived from role responsibilities (articulated in the form of user stories)-->

Application architects worry about and need: 

* Stakeholder concerns, project budgets 
* Quality attributes
* Decision rationale
* Quick overviews of external interfaces and internal structure of the produced software.
* Dependencies, licenses

### Collaborations

* [API Product Owner/Manager](./SDPR-APIProductOwner.md)
* and many more (all external stakeholders and team members, basically)

### Consumed/Produced Artifacts and Applied Practices


|**Phase**| Consumed | Produced | Comments |
|:-|:-----:|:------:|:--------:|
| Analysis | Uses cases, user stories | Non-functional requirements, for instance in the form of Quality Attribute Scenarios | Iteratively refined |
| Design | Legacy system descriptions, external interfaces | Decision log] comprising of ADRs (for instance [Y-statements](../artifact-templates/DPR-ArchitecturalDecisionRecordYForm.md)), architecture design models | Both produced and consumed |
| Implementation and test | Code, test specifications and reports | Reviews | Not in scope of DPR at present |
| Evolution and maintenance | Change requests, bug reports | Architectural refactorings | Not in scope of DPR at present |


### More Information

See this [guest editorial](http://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=7725214) of the special theme issue of IEEE Software "The Role of the Software Architect in the Digital Age".

<!-- 
Could suggest books to learn this role. Experience can't be taught but has to be gained. Once you have some, try 1) Design It! 2) Just Enough Software Architecture, 3) SWA Elevator 
-->


## DPR Metadata

```yaml
title: "Design Practice Repository (DPR): Application Architect"
author: Olaf Zimmermann (ZIO)
date: "08, 14, 2020 (Source: Project DD-DSE)"
copyright: Olaf Zimmermann, 2020 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```
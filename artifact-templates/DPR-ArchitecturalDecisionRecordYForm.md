---
Scope: Entire system, component, connector, class, ...
Phases: Design (all levels) 
Roles: Architect (different specializations)
Activities: All design work
Abstraction/Refinement Level: All
---


Artifact and Template: *Architectural Decision Record (Y-Form)*
---------------------------------------------------------------
also known as: Y-Statement

A Y-statement captures decision context, addressed requirement, decision outcome and consequences (good and bad) in a single, structured sentence.

### Motivation (Addressed Information Need) 
The purpose of this artifact and template is to provide decision *rationale* (justifications for chosen patterns, technologies, products). Instances of this template answer "why?" questions about an architecture (across viewpoints and perspectives).


### Usage (Produced and Consumed When)
Decisions are made throughout the entire project (or product development), by different stakeholders: team leads, team members recording group decisions, lead and subsystem architects, DevOps specialist, and so on. For the time being, only the [Application Architect](../roles/DPR-ApplicationArchitectRole.md) and the [API Product Owner](../roles/SDPR-APIProductOwner.md) role are modeled in DPR.

On agile projects, the sprint/iteration review meetings might be a good point in time to gather and discuss decision rationale; daily stand-ups may be used for urgent ones.

The decision making and capturing activity in DPR is documented [here](../activities/DPR-ArchitecturalDecisionCapturing.md).


### Template Structure and Notation(s)
Y-statements are often captured in plain but structured text (but tables in presentation tools, wiki pages and modeling tools can also be used):

![](images/ADCaptureYTemplate.png)


### Examples
[Wikipedia](https://en.wikipedia.org/wiki/Architectural_decision#Examples) has this example:

~~~
In the context of the Web shop service, facing the need to keep user session data consistent and current across shop instances, 
we decided for the Database Session State Pattern (and against Client Session State or Server Session State)
to achieve cloud elasticity, accepting that a session database needs to be designed, implemented, and replicated. 
~~~


### Tools
Several options are available: 

* Word processors and text editors
* Markdown editors, often coming as extensions/plugins to general-purpose developer tools such as Visual Studio Code, possibly supported by the [MADR](https://github.com/adr/madr) template and tools
* [AD Mentor](https://www.ifs.hsr.ch/index.php?id=13201&L=4) has a Y-Statement template for its solution space models/diagrams

When embedding ADs in code, custom annotations can be used (for instance, with [Embedded Architectural Decision Records (e-adr)](https://github.com/adr/e-adr)).


### Hints and Pitfalls to Avoid

* Some readers do not appreciate the structured, but rather long sentences in the original Y-form; consider splitting up into two our three sentences if you get such feedback.
* Optionally, you may want to add a "because" half sentence for any rationale and justification that does not fit into the "to achieve"/"accepting that" weighting. 
* Consider switching to MADR or Nyman ADRs or another template for AD capturing if the Y statements do not work well in your context and project. An inconsistently formatted decision log is better that none (assuming that its content is accurate and current).


### Origins and Signs of Use
The WH(Y) format for AD records was originally suggested in a SATURN 2012 presentation by Olaf Zimmermann; it has been practiced in a number of projects, for instance at ABB, and taught at HSR FHO since 2013. It took inspiration from the decision outcome format suggested by George Fairbanks in this Architecture Haikus, but adds context- and quality-related information.

A blog post on [AD Making](https://ozimmer.ch/practices/2020/04/27/ArchitectureDecisionMaking.html) provides more historical information, known uses, an additional example and advice on how to provide convincing justifications.

<!-- 
### Performing Role(s)

* [Application Architect](../roles/DPR-ApplicationArchitectRole.md)
* [API Product Owner](../roles/SDPR-APIProductOwner.md)
* Any other decision maker and technical leader
-->

### Related Artifacts and Practices (incl. Alternatives)
Instances of this artifact are produced when employing a continuous or stage-based [Architectural Decision Capturing](../artifacts-activities/DPR-ArchitecturalDecisionCapturing.md) practice. The captured rationale (decision justification) should reference one or more [non-functional requirements](../artifacts-activities/DPR-SMART-NFR-Elicitation.md).

Many other templates have been proposed; see [activity description](../activities/DPR-ArchitecturalDecisionCapturing.md) for pointers.


### More Information

* [Blog post on Y-statements on Medium](https://medium.com/@docsoc/y-statements-10eb07b5a177)
* IFS website on [Architectural Knowledge Management (AKM)](https://www.ifs.hsr.ch/index.php?id=13191&L=4) 
* Proposal for a [Definition of Done for ADs](https://ozimmer.ch/practices/2020/05/22/ADDefinitionOfDone.html)


```yaml
title: "Design Practice Repository (DPR): ADR-Y"
author: Olaf Zimmermann (ZIO)
date: "08, 14, 2020 (Source: Project DD-DSE)"
copyright: Olaf Zimmermann, 2020 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```


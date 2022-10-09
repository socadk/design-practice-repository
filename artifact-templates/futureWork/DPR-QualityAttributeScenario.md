---
Scope: Entire system, individual parts
Phases: "Analysis"
Roles: "Application architects, other architects"
Activities: SMART NFR Elicitation
Abstraction/Refinement Level: n/a (requirements)
---

Artifact/Template: *Quality Attribute Scenario (QAS)*
-----------------------------------------------------
<!--Alternate names or candidate names) can be listed as "Also known as " here.-->
also known as: SMART NFR

> *A quality attribute scenario specifies measurable quality goals for a particular context.*

### Motivation (Addressed Information Need) 
<!--Purpose -->

It is not sufficient to find out and specify *what* a system under construction is supposed to do. It is equally important to investigate *how* it does so (from an architectural point of view). Vague statements such as "we value a good user experience" are not verifiable and let to tension between project team and irs external stakeholders.


### Usage (Produced and Consumed When)
<!--AA/AS/AE, must identify the producing role and the target audience-->

QAS are created and used in:

* Requirements elicitation (analysis), see [SMART NFR Elicitation](../artifacts-activities/DPR-SMART-NFR-Elicitation.md) activity
* Architecture design and architectural decision making
* Test preparation and testing (stress testing in particular)
* [Service Level Agreement (SLA)](SDPR-ServiceLevelAgreement.md) 
* Reviews and planning of re-engineering and refactoring


### Template Structure and Notation(s)
<!-- What to do, artifact to produce; minimum, medium maximum diligence/verbosity (?)-->  
The template look as follows (with explanations):

![Annotated QAS Template](/artifact-templates/images/ZIO-QualityAttributeScenarioExplanations.png)

See sample chapter of ADD 3.0 book by H. Cervantes and R. Kazman for the SEI visualization.
<!-- TODO 2022 show graphical image from SEI books and reports (MK has them too), https://ptgmedia.pearsoncmg.com/images/9780134390789/samplepages/9780134390789.pdf bibtex this tutorial is good too: https://resources.sei.cmu.edu/library/asset-view.cfm?assetid=436536 (SATURN 2015) -->

### Example(s)
<!-- Must be concrete, ideally give three ones, one for each verbosity/fidelity level basic, medium, full-->

![QAS Example](/artifact-templates/images/ZIO-QualityAttributeScenarioExample.png)


### Tools
<!--From AA, should call out what one needs to be able to do on beginner, intermediate, advanced level; as a team -->

This is a text artifact, possibly structured with the help of templates and tables.


### Hints and Pitfalls to Avoid (Common Pitfalls)
<!--See ART, don’t overdo etc.-->

* Focus on key qualities, prioritize elicitation and documentation effort by business value and technical risk (e.g., ASR test)
* Define the behavior in different environments (steady state, high workload, error cases)
* Do not let this analysis artifact morph into a design one; the response measure is an observable quality, not a means to achieve this quality.

<!-- TODO could talk about design time vs. runtime; what are measures for design time qualities such as maintainability? could talk about quality trees for prioritization, risk-based approach by M .Glinz (see fact sheets) -->


### Origins and Signs of Use
<!-- From PLOPs and from AA-->

<!-- UML-based methods and their predecessors: -->

* The SEI books and technical reports established the template since the late 1990s (@Bass:2012).
* The arc42 template also features it in its [Section 10](https://docs.arc42.org/section-10/).
* Methods such as UP have/had similar concepts.


### Related Artifacts and Practices (incl. Alternatives)
<!--in DPR/OLAF and elsewhere-->

In general: 

* Agile landing zones for NFRs (RWB) 
* SMART NFR checklist
* PLANG

In DPR: 

* SMART NFR Elicitation, features specific and measurable as quality criteria for quality requirements; QAS bring these properties when filled out properly
* Architecture Modeling activity, uses QAS and other SMART NFRs as input


### More Information

Blog post [""Do Software Architectures Meet Extra-Functional or Non-Functional Requirements?](https://ozimmer.ch/practices/2020/11/19/ExtraExtraReadAllboutIt.html).


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Quality Attribute Scenario"
author: Olaf Zimmermann (ZIO)
date: "10, 09, 2022"
copyright: Olaf Zimmermann, 2022 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

<!--
# References
[C-99]: # (Comment: References will be added here automatically when using -bibliography option of pandoc command)
-->
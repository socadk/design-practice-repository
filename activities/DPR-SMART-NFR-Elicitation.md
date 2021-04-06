---
Scope: Entire system, individual parts
Phases: "Analysis"
Roles: "Application architects, other architects"
Input: "Project goals, functional requirements"
Output: "NFR document, formal or informal"
Abstraction/Refinement Level: n/a (requirements)
---


Activity/Technique: *SMART NFR Elicitation*
--------------------------------------------

<!-- TODO (v2) decide on split: "Group NFRs by Type" or "select taxonomy" could be a separate activity that features FURPS, etc.; activity vs. artifact? -->

### Context
*Non-Functional Requirements (NFRs)*, including *Quality Attributes (QAs)*, describe *how* a system provides its functionality, not what it does (which is the purpose of functional requirements specifications, possibly captured as [user stories](../artifact-templates/DPR-UserStory.md) or [use cases](../artifact-templates/DPR-UseCase.md)). Examples of key QAs are reliability, usability, efficiency (including performance and scalability), maintainability, and portability according to [ISO/IEC standard 9126](https://en.wikipedia.org/wiki/ISO/IEC_9126). ISO 9126 also lists functionality as a quality category; it is superseded by the newer "SQuaRE" standard [ISO/IEC 25010:2011 ](https://www.iso.org/standard/35733.html).

Note that while common, the term "non-functional" and the acronym "NFR" are not received well by some thought leaders that prefer the term ["extra-functional"](https://ozimmer.ch/practices/2020/11/19/ExtraExtraReadAllboutIt.html). Not all non- or extra-functional requirements qualify as quality attributes, as there are technical, organizational, and educational *constraints* as well; hence, an additional term is needed. We decided for NFR here, primarily due to the popularity of this term in practice. 


### Goal and Purpose (When to Use and When not to Use)

> *As a requirements engineer, I would to find out and specify the quality characteristics and (non-)technical constraints of the system/software under construction.* 

Expressive, unambiguous NFRs that find their way into project plans and the minds of the project participants are the main output of architectural analysis. Without such NFRs, architecture design work becomes a blind flight; the project team is at the mercy of the client or internal project sponsor who can come up with new and more advanced requirements as they wish.

Practical challenges of NFR elicitation include:

* There are many QAs, and usually the project budgets do not allow to specify all of them precisely. Furthermore, many conflicts between them exist (for instance, implementing a security feature has a performance cost); a prioritization is required, but hard to commit to and agree upon (for many stakeholders). 
* QAs are often stated on inadequate level of abstraction, for instance per system and not per logical function or business process step. They keep on changing.
* Many attributes are hard to quantify. Hence, QAs often remain under-specified (so they are unknown and cannot serve as the base of design decisions and acceptance tests) or are over-specified (and therefore overly ambitious and hard to meet).

Therefore, it is desirable to establish criteria and templates that allow architects and other participants to overcome these challenge so that NFR elicitation and architectural analysis can be conducted effectively and efficiently.

The following figure suggests a three-step approach:
<!-- Source: https://miro.com/app/board/o9J_lN6Tr5c=/ -->
![Stepwise ELicitation of Non-Functional Requirements (NFRs)](/activities/images/DPR-NFRElicitation.png)

### Instructions (Synopsis, Definition)
*Select and apply a taxonomy consistently.* There are many different NFRs, Quality Attributes (QAs) in particular. Many of these pertain to the runtime, others deal with software support and maintenance. Therefore, many attempts have been made to organize the QA landscape (ordered from informal and ad hoc to formal and complete): <!-- POINT post has D-O-M -->

* A basic, easy-to-remember *FURPS+* classification was originally introduced by R. Grady in the 1990s according to [this article by P. Eeles](https://www.ibm.com/developerworks/rational/library/4706.html) that introduces the elements of FURPS+ and provides examples.
* ISO 9126 and its successor [ISO 25010](http://iso25000.com/index.php/en/iso-25000-standards/iso-25010) are used in ["Effektive Softarearchitekturen"](https://www.gernotstarke.de/buecher#2020) (@Starke:2015) and also recommended to be used in [arc42](https://arc42.org/overview/) descriptions.
* SEI quality utility trees are recommended in [this article](http://arnon.me/2010/05/utility-trees-hatching-quality-attributes/) by Arnon Rotem-Gal-Oz as well as [arc42 tip 10-2](http://docs.arc42.org/tips/10-2/). 

*Be SMART*. General [*SMART criteria*](https://en.wikipedia.org/wiki/SMART_criteria) are frequently used in project and people management. All five letters can have different meanings<!--(is this an instance of "semantic diffusion"?-->; here, we use these meanings: *S* for specific, *M* for measurable, *A* for agreed upon, *R* for realistic, and *T* for time-bound.

The SMART criteria can be applied to NFR elicitation in a straightforward way and therefore serve as "meta-qualities" (quality attributes of/for quality attributes, that is):

* **S**pecific: Which feature or part of the system (or the build-time process and supporting infrastructure) should satisfy the requirement? Which type of environment does the requirement pertain to (for instance, normal operations a.k.a. "sunny day", peak loads, error situations)? 
* **M**easurable: How can testers and other stakeholders find out whether the requirement is met (or not)? Is the requirement quantified?
* **A**greed upon: Do all affected internal and external stakeholders agree on the 'S' and the 'M' wording (issue for requirements engineering and project management, so out of scope here and now)?
* **R**ealistic: Is it technically and economically feasible to achieve the 'M' measure in the context of all features or system parts specified under 'S' (issue for requirements engineering and project management, so out of scope here and now)?
* **T**ime-bound: When should the NFR meet the 'M' measure, is there a growth path from iteration to iteration (also to be answered by project management, so out of scope here and now)?

S is about *scoping* the requirement (note that the word “specific” might suggest a different meaning, possibly similar to "M"?). 

> *Which functional requirement or part of the design/system under construction requires the specified quality property?*

Not all features need the same (high) availability. For example, an end user channel generating revenue every day differs from a once-per-month master data bulk update between backend systems. And not all qualities are as cross-cutting as security; even security sub-requirements might differ per data element/per user story/per component.

M is about *monitoring* the requirement throughout a project. You should be able to answer/assess: 

> *Is the NFR achieved or not?*

Explanations (or excuses?) for not coming up with numbers are easy to find; for instance, fear of over-commitment might cause under-specification. Such procrastination will get to you in the long run (some small examples from actual project examples are keywords such as: "standards compliance (past, present, future)", "fully flexible data model", "scale management console from human activities to system events").

<!-- TODO (v2) also document A, R, T on level of detail of S and M? -->

Assessments can be recorded in the following way: 

| ASR | Specific (Y/N)? | Measurable (Y/N)? | Rationale for Answers | Improvement (if Needed) |
|:----|:----------------|:------------------|-----------------------|-------------------------| 
| *Req-1* | [Y/N] | [Y/N] | (answer to question from above) | (required change or n/a) | 
| *Req-n* | [Y/N] | [Y/N] | ... | ... | 

<!-- Another "meta quality scheme" is CARGO (for decisions and designs):
* C - changeable (no dead ends)
* A - aesthetic
* R - reproducible/repeatable ("nachbaubar")
* G - good enough (simple, lean)
* O - observable 
(source: ZIO) -->

*Prioritize by effort, benefit, risk*. See the IEEE Software article ["A risk-based, value-oriented approach to quality requirements"](https://www.zora.uzh.ch/id/eprint/7375/) by Martin Glinz for advice.


### Example(s)
An example and a counter example are: 

* "The system should be highly usable, perform well, and easy to maintain."
* "The 'place order' user story must complete in less than a second."

*Question*: Which of the above is SMARTer than the other?

In a telecommunications order management system, requirements that deal with external and internal quality properties may be: <!-- bibtex OOPSLA 2005 PR? -->>

* *Accuracy*: orders must not be lost, resource reservations must be undone.
* *Efficiency* (here: performance): sub-second response times specified.
* *Interoperability*: multiple platforms to be supported.
* *Modifiability*: skills for selected technologies must be available locally.

An example of a constraint in the same scenario might be "only relational database management system X can be used because an enterprise-wide licensing agreement is in place and the required database administration skills have been built up". 

*Availability* is another example of an important NFR. A system is available if it is up and running *and* produces correct results (or: a system fails if it gives a wrong answer or no answer at all).
<!-- The availability of a system is the fraction of time it is available. A system is highly available if its availability is close to 1. Thus, high availability is the property of a system to be up and running all the time, always producing correct results. --> Hence, the (in)famous availability requirement is "24x7".[^1]:

[^1]: Note that true high availability is expensive to achieve (think about maintenance intervals, need for fault-tolerant hardware, etc.).

The more a system fails, the less it is available; the longer it takes to repair a system after it fails, the less it is available. Systems that depend on others "inherit" their availability partly.
"Mission-critical" middleware such as database management systems, transaction processing monitors, workflow management systems must be highly available --- so that supported applications are able to meet their NFRs.


### Benefits vs. Effort (Expected Benefits, Skill Levels)
See ["A risk-based, value-oriented approach to quality requirements"](https://www.zora.uzh.ch/id/eprint/7375/) by M. Glinz for guidelines when to invest in deep and SMART NFR elicitation, and when not to.


### Hints and Pitfalls to Avoid

* State assumptions if stakeholder input is incomplete or insufficient; have these assumptions reviewed and approved.
* Define [landing zones](http://wirfs-brock.com/blog/2011/07/28/agile-landing-zones/) if single numbers are hard to come up with and agree upon. For instance, a triplet of "minimal", "target", and "outstanding" quality goals may define such landing zone.
* Be assertive in your [technical writing](https://ozimmer.ch/tags/#technical-writing); avoid filler words such as "in principle" , "generally", "more or less", etc. 
* Make conflicts between NFRs explicit, prioritize, and find tradeoffs. For instance, balance security and performance requirements.
* Do not hesitate to refine or relax NFRs as the system evolves and you learn more about actual user wants and needs and technical feasibility of runtime qualities.

The [arc42 website](https://docs.arc42.org/section-10/) provides eight more hints.


### Origins and Signs of Use
NFRs and quality management have been a key theme in software engineering since the very beginnings 50+ years ago (@Bass:2012). Words ending with "-ility" often indicate NFR awareness and analysis. 

The oldest reference that we found is a paper on "SMART Requirements" by Mannion and Keepence,  defining A and T somewhat differently (@MannionKeepence:1995).

Numbers usually indicate that the 'M' property has been strived for; explicit mention of the system under construction and/or individual use cases/user stories and system components indicates the 'S' in SMART. 


### Related Content

#### Performing Roles and Related Artifacts (Synopsis)

* [Application Architect](../roles/DPR-ApplicationArchitectRole.md) and other decision makers


#### Practices and Techniques (Refinements, Guides)

* Quality Attribute Scenarios (QAS) (@Bass:2012) make the NFR specification smart and measurable (but also a bit repetitive); utility trees can help with prioritization (by business value and technical risk).
* [Mini-Quality Attribute Workshop (QAW)](https://www.neverletdown.net/p/mini-quality-attribute-workshop.html), a simplified form of the QAWs that are part of the Architecture Tradeoff Analysis Method (ATAM) (@Barbacci:2002). Michael Keeling introduces them <!-- as activity 7 in his Architect's Toolbox in --> in his book ["Design It"](https://pragprog.com/titles/mkdsa/design-it/) and his 2015 IEEE Software Insights column ["Lightweight and Flexible"](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=7093052).
* [Quality storming](https://speakerdeck.com/mploed/quality-storming) by Michael Ploed


### More Information 
See blog post ["Do Software Architectures Meet Extra-Functional or Non-Functional Requirements?"](https://ozimmer.ch/practices/2020/11/19/ExtraExtraReadAllboutIt.html) by Cesare Pautasso and Olaf Zimmermann for a deeper (only half-serious) terminology discussion, examples, and pointers to related taxonomies and templates.

arc42 recommends to have [top three to five QAs in Section 1 of architecture descriptions](http://docs.arc42.org/section-1/), suggests a [Section 2 dealing with constraints](http://docs.arc42.org/section-2/), and puts the detailed quality requirements section towards the end in [Section 10](http://docs.arc42.org/section-10/). The Scaled Agile Framework (SAFe) also covers [NFRs](https://www.scaledagileframework.com/nonfunctional-requirements/). 

Websites dedicated to software quality include [Quality-Aware development](http://www.quality-aware.com/). The presentation [Non-Functional Requirements --- How to Get Them in Shape](http://www.softwaresummit.com/2006/speakers/BerghJohnssonNFR.pdf) defines the acronym differently but sends similar messages as we do here.


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): SMART NFR Elicitation"
author: Olaf Zimmermann (ZIO)
date: "03, 29, 2021"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

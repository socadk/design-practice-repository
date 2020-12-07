
## *DPR:* Background information 

[This blog post](https://ozimmer.ch/practices/2020/10/14/DesignPracticeRepository.html) motivates where DPR comes from and what matters to us as method engieers and adopters. More specifically, the design principles and guidelines for [DPR](../README.md) are:

* Use structure and terminology of OMG SPEM and traditional methods like IBM Global Services Method/Unified Method Framework and (Rational/Open) Unified Process
* Include architecturally significant [Agile practices](https://www.agilealliance.org/agile101/) from the [subway map](https://www.agilealliance.org/agile101/subway-map-to-agile-practices/) and [glossary collection](https://www.agilealliance.org/agile101/agile-glossary/) available at the Agile Alliance
* Integrate or point at resources from publicly available methods and templates, for instance, ADD, arc42 and C4 (as umbrella, defined goals and gives choices), blended with [personal insights](https://ozimmer.ch/index.html) 1995 to present
* Complement this content with fresh, up-to-date content from personal experience and online resources
* Prefer a practice collection over a closed, formal/full method(ology):
    * Roles are not formally defined, but represent stakeholder personas with information/specification/review needs
    * Be open and lean by design, so never finished (and delivered as a repo)
* Practice [Situational Method Engineering](https://www.researchgate.net/publication/220349352_Situational_Method_Engineering_State-of-the-Art_Review/link/0912f508a5a083e5bc000000/download) when creating new method elements (artifact description techniques, templates and so on).
* We agree with Philippe Kruchten that ["we do not need richer software process models"](https://philippe.kruchten.com/2011/03/11/we-do-not-need-richer-software-process-models/) if rich means means heavy, detailed, complicated. Hence, our main focus is on the (hopefully light) artifacts templates for commonly used practices, and much less on activity flows and roles.

We follow a *PEACH* model (compare with the ["Keeling Five"](https://ozimmer.ch/practices/2020/10/14/DesignPracticeRepository.html) criteria for mighty methods): 

* *P*ragmatism and common sense, for instance when making in/out decisions
* *E*ngineering Spirit: repeatable process, from analysis and spec to design and implementation and beyond 
* *A*daptability by context, according to preferences and culture, 
* *C*ourage for instance to leave things out or do them differently, disclose sources/reference input; reusing material is generally accepted in an open source-minded community, but with acknowledgment, proper referencing (license permitting) 
* *H*onesty: ethics such as no cheating, no black-and-white argumentation, do not make up villains  <!--, see consulting code of conduct in CSCUBS presentation 2017-->

If you do not comply, you might risk impeachment &#128530; 

<!--
More snippets of method engineering and usage principles are:

* "It depends" as an answer to a difficult question is not (always) an excuse, context does matter. But one should always be able to list some criteria! General advice is good but has its limitations.
* There is a specification continuum, see this [report from a EuroPLoP 2017 focus group](https://www.vanheesch.net/papers/eplop17-FG-continuousSWD.pdf), featuring the notion of *document refactoring* and related smells: document are never finished but, but leaving them blank does not make sense either e.g. for non-functional requirement specifications. 
* The notion of a "topic backlog" has been proposed (S. Ambler and P. Kruchten): things to be thought about and worked upon, not necessarily features only.
-->


### A bit of method history

This section certainly does not aim to be complete; please send additions via pull requests if you miss a method you have applied or created.

Methods from the 1970s, 1980s, 1990s:

* Structured Analysis (SA)
* Object-Oriented Analysis and Design (OOAD), supported by a number of methods such as Booch, OMT, OOSE and later converged and unified in UML and the Unified Process (UP) 
* Enterprise Architecture Management (EAM) frameworks and methods such as TOGAF and Zachman

And the 2000s:

* [Agile practices](https://www.agilealliance.org/agile101/agile-glossary/), including proposals for scaling agile such as SAFe
* Strategic and tactic [Domain-Driven Design (DDD)](https://dddcommunity.org/) <!-- OOAD continuation/extension -->
* [Software Engineering Method and Theory (SEMAT)](http://semat.org/what-is-it-and-why-should-you-care-) initiative, [Essence specification](http://semat.org/essence-1.2) and [learning/teaching material](http://www.software-engineering-essentialized.com/home)
* Software architecture templates and notations (see this [state of the art and the practice report as of 2016](http://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=7725214) for more): 
    * [C4 Model](https://c4model.com/) and RCDA
    * [ISO/IEC/IEEE 42010 templates](http://www.iso-architecture.org/ieee-1471/templates/)
    * [Unified Architecture Method (UAM)](http://www.unified-am.com/)
* [arc42](https://arc42.org/) is a rich 12-section template for architecture descriptions. It comes with many hints, examples of SMART quality attributes, and much more. Many of the general purpose artifacts in DPR also appear in arc42.
* SOA method(s) 
    * SOAD proposal ([HTML](https://www.ibm.com/developerworks/library/ws-soad1/), [PDF](https://www.ibm.com/developerworks/library/ws-soad1/ws-soad1-pdf.pdf))
    <!-- * SOMA and similar proprietary methods (see this paper) -->


### Personal toolboxes (general purpose, not limited to service design)

Ordered alphabetically: 

* George Fairbanks, [Architecture Haikus](https://www.georgefairbanks.com/software-architecture/architecture-haiku/) and more 
* Gregor Hohpe, [IT Architect Elevator](https://architectelevator.com/) and [Cloud Strategy](https://architectelevator.com/book/cloudstrategy/) book
* Michael Keeling, Design It! book (@Keeling:2019) and [blog](https://www.neverletdown.net/)
* Michael Stal's [Hitchhiker's Guide to Software Architecture and Everything Else](http://stal.blogspot.com/)
* Rebecca Wirfs-Brock’s blog [The Responsible Designer](http://wirfs-brock.com/blog/)

Olaf Zimmermann's take is summarized in [this blog post](https://ozimmer.ch/practices/2020/10/14/DesignPracticeRepository.html) (that also introduces DPR) and [this page in DPR](./olzzio.md). 


### More Information (Application Examples, Links to other Method and Repositories)
<!--
Here are some additional resources and references:

* Agile Modeling by Scott Ambler
* OpenUP, the open source version of Rational Unified Process (RUP) - even if you are not fond of processes and artifact templates, you will find useful advice in it, e.g. under practices and guidance 
* The Tyree/Akerman template for AD capturing as published in an article in IEEE Software (which, according to the article, is inspired by the IBM template for architectural decision capturing as applied in an e-business Reference Architecture from IBM; see this SATURN presentation for other exemplary usages of the IBM template)
* The IBM Architecture Description Standard (ADS) that dates back to the late 1990s. ADS was introduced in an article in the IBM Systems Journal and got referenced e.g. in this MSDN article.
* The Pragmatic Bookshelf website, many resources for developers, architects and other roles in software engineering
* Collection of essential practices and checklists in SEMAT
* OMG SPEM for method terminology and method engineering (e.g. in software engineering research)
-->

General purpose:

* The [DDD crew](https://github.com/ddd-crew/) repositories and templates for business-level Domain-Driven Design (DDD). A great place to start is [Domain-Driven Design Starter Modelling Process](https://github.com/ddd-crew/ddd-starter-modelling-process) 
* [Rational Unified Process (RUP)](https://en.wikipedia.org/wiki/Rational_Unified_Process) and its younger "sibling" [OpenUP](https://download.eclipse.org/technology/epf/OpenUP/published/openup_published_1.5.1.5_20121212/openup/index.htm)
* Articles [on design](http://www.wirfs-brock.com/Resources.html) by Rebecca Wirfs-Brock
* [Methods and Tools](http://www.methodsandtools.com/) is an online "Software Development Magazine - Project Management, Programming, Software Testing".

API and service design:

* Sam Newman's second book "Monolith to Microservices" features database decomposition patterns 
* The demo [Domain-Driven Service Design with Context Mapper and MDSL](https://ozimmer.ch/practices/2020/06/10/ICWEKeynoteAndDemo.html) take you from user stories to running microservice architecture in seven (plus two) steps.
* [MAP tutorial 2](https://microservice-api-patterns.org/patterns/tutorials/#tutorial-2) (not public yet, but access can be granted upon request) features a good share of the tasks describes in this repository.
* The [Service Cutter wiki](https://github.com/ServiceCutter/ServiceCutter/wiki) collects coupling criteria 

See this [presentation](https://sagra2016.files.wordpress.com/2016/10/zio-towardsopenleanarchitectureframework-sagranov2016v10p.pdf) and this [IFS website](https://ifs.hsr.ch/index.php?id=13195&L=4) for more pointers.


### Site Navigation

* [Top-level readme for the DPR repository](../README.md): getting started information, terminology clarification, metadata
* [Artifact templates](../artifact-templates) 
* [Activities](../activities)
* [Roles](../roles)
* [Bibliography (references)](literature.md)


## DPR Metadata

```yaml
title: "Design Practice Repository (DPR): Background Information"
author: Olaf Zimmermann (ZIO)
date: "12, 4, 2020 (Source: Project DD-DSE, supported by the Hasler-Foundation)"
copyright: Olaf Zimmermann, 2020 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

### License

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.


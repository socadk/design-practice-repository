
## Towards an open and lean architecting framework 

On our client projects, we typically combine carefully selected elements from existing analysis and design methods, and complement them with a few additional elements (if needed):

* User stories and use cases (sometimes combined), OOAD domain models
* Non-functional requirements (NFRs) such as quality attributes captured in a specific and measurable way, taking inspiration from SMART project and people management goals (alternative: quality stories, quality attribute scenarios)
* System context diagrams to analyze and determine external system boundaries and project scope, sometimes blended with a dose of bounded contexts/context maps from strategic Domain-Driven Design (DDD)
* Component-Responsibility-Collaborations (CRC) Cards, a variant of OOAD-style CRC cards; radar charts; service interface contract tables
* Operational Modeling as envisioned in the Architecture Description Standard (ADS) by IBM architects that also contributed to the IBM Global Services Method (as one of several viewpoints)
* Y-statements for terse Architectural Decision (AD) capturing that still is compliant to ISO/IEC/IEEE 42010:2011, the successor of IEEE Std. 1471 that makes decision rationale a mandatory element of architecture descriptions
* SWOT tables for (qualitative) fit-gap scoring of candidate assets (such as patterns, technologies, frameworks)

See an [ECSA SAGRA presentation](https://sagra2016.files.wordpress.com/2016/10/zio-towardsopenleanarchitectureframework-sagranov2016v10p.pdf) for a shortlist of key artifacts/practices and examples of their use. <!-- > and paper <http://dl.acm.org/citation.cfm?id=3014339>. --> 


### Principles 

Some of our guiding principles for method adoption (and creation) are:

* Always write for a particular target audience (i.e., stakeholders with concerns) and model purposeful.
* When deciding to include or exclude an artifact, apply the less-is-more principle ("in doubt, leave it out"). <!-- 3 typos on old website -->
* Follow a "good enough" approach to architectural decision making and documentation. <!-- See this page for decision capturing templates. -->
* Design for operations, strive for compliance by design.
* Apply patterns and other reusable assets to reduce risk and cut cost.

For more guiding principles, see Gregor Hohpe's beliefs as presented in his [ECSA 2014 keynote](http://ecsa2014.cs.univie.ac.at/program/keynote-speakers/) (e.g., "content is king", "lead by example") and the [10 Design Principles by GOV.UK Government Digital Service](https://www.gov.uk/design-principles). At ECSA 2020, [Michael Keeling's keynote](https://ecsa2020.disim.univaq.it/details/ecsa-2020-keynotes/3/Mighty-Methods-Four-Essential-Tools-for-Every-Software-Architect-s-Silver-Toolbox) listed these five criteria: 

1. Facilitate human-centered design.
2. Bias toward concrete outcomes.
3. Consider the whole design space.
4. Promote team growth.
5. Easy to teach, fun to use.


### Enter DPR

Olaf Zimmermann announced DPR in his blog post ["DPR: An Open Source Repository Collecting Mighty Methods"](https://ozimmer.ch/practices/2020/10/14/DesignPracticeRepository.html) on October 14, 2020. 

We hope DPR qualifies as a (set of) mighty methods... if not, please [help us](../contributing/readme.md) get better!


## DPR Metadata

```yaml
title: Design Practice Repository (DPR): Towards an Open and Lean Architecting Framework
author: Olaf Zimmermann (ZIO)
date: "03, 29, 2020"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
```

### License

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.

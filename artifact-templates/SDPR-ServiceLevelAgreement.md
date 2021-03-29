---
Scope: Entire system, single API
Phases: Transition from development to operations, commercial use
Roles: API Owner Product Owner, Application Architect
Activities: Stepwise Service Design, Step 6
Abstraction/Refinement Level: Concrete, elaborate 
---


Artifact/Template: *Service Level Agreement (SLA)*
--------------------------------------------------

> *An SLA answers the following questions: "How can an API client learn about the specific quality-of-service characteristics of an API and its operations? How can these characteristics and the consequences of not meeting them be defined in a measurable way?"* <!-- MAP quote -->

### Motivation (Addressed Information Need) 
API providers want to deliver high-quality services while at the same time using their available resources economically. The resulting compromise can be expressed in a Service Level Agreement (SLA). 

An API quality property that is often expressed in an SLA is the *availability* of the API/service (its uptime while returning correct results, that is).


### Usage (Produced and Consumed When)
Providing an SLA for a service has the following benefits: 

* In DPR, the activity [Stepwise Service Design](../activities/SDPR-StepwiseServiceDesign.md) talks about SLA in its Step 6.
* Service clients can decide whether a provider’s offerings match the client’s business needs from a business agility and vitality point of view.
* The service provider can communicate the attractiveness, availability and performance goals of its services to clients without making unrealistic promises that may cause client dissatisfaction or even financial losses.

The [Microservice API Pattern (MAP)](https://microservice-api-patterns.org/) website captures the SLA artifacts as a pattern; the [Forces](https://www.microservice-api-patterns.org/patterns/quality/qualityManagementAndGovernance/ServiceLevelAgreement#sec:ServiceLevelAgreement:Forces) and the [Consequences](https://www.microservice-api-patterns.org/patterns/quality/qualityManagementAndGovernance/ServiceLevelAgreement#sec:ServiceLevelAgreement:Consequences) sections of the pattern, for instance, discuss the pros and cons of such artifact in depth.

### Template Structure and Notation(s)
An SLA is comprised of at least one *Service Level Objective*, which specifies a measurable aspect of the service the provider agrees to uphold:

![](https://www.microservice-api-patterns.org/patterns/quality/qualityManagementAndGovernance/plantuml-images/42eccd72824320a88d354f225b467c2c461e7386.png)

Again, the [SLA pattern on the MAP website](https://www.microservice-api-patterns.org/patterns/quality/qualityManagementAndGovernance/ServiceLevelAgreement#sec:ServiceLevelAgreement:Solution) has all the details.


### Example(s)
SLAs are common with large cloud providers, see for example the [Amazon Compute Service Level Agreement](https://aws.amazon.com/compute/sla/), [SLA for Azure Functions](https://azure.microsoft.com/en-us/support/legal/sla/functions/v1_0/) and Google's [Compute Engine Service Level Agreement](https://cloud.google.com/compute/sla).


### Tools
No tools are needed, but it is recommended to create a project or even company-wide template for SLAs that serves as a guidance.

The emerging [Microservice Domain-Specific Language](https://microservice-api-patterns.github.io/MDSL-Specification/optionalparts) (MDSL) supports SLA modeling in an experimental and optional part of the language. 


### Hints and Pitfalls to Avoid

* Striking a balance between attractiveness and at the same time trustworthiness and accountability in your SLA and SLO commitments can be a challenge. 
* The level of detail and the tradeoff between provider commitments and customer/client obligations also depend on the visibility and reach of a system/API and the consequence of not meeting its SLA: an internal SLA often can be more aggressive, while an SLA for external clients might be legally binding. 


### Origins and Signs of Use
[Site Reliability Engineering](https://cloud.google.com/blog/products/gcp/sre-vs-devops-competing-standards-or-close-friends) (SRE) teams use SLAs to guide the development and delivery of new features: if an SLO is overachieved, the team has a so-called "error budget" where it can risk to break the SLO. On the other hand, if an SLO is nearly breaking, the team has to be more careful with changes and slow down.


### Related Artifacts and Templates (incl. Alternatives)
SLAs are often part of an [API Description](SDPR-APIDescription.md), or complement technical service contracts. 

Terms and Conditions (Ts&Cs) documents of API use are less formal, but similar in their goals. Ts&Cs and SLAs may be used together and can then complement and cross-reference each other. 


### More Information
See this Userlike blog post ["Service Level Agreement - Best Practices & Crucial Elements"](https://www.userlike.com/en/blog/service-level-agreement-best-practices).


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Service Level Agreement"
author: Mirko Stocker (STX), Olaf Zimmermann (ZIO)
date: "02, 26, 2021 (Source: Project DD-DSE)"
copyright: Olaf Zimmermann, 2020 -2021 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

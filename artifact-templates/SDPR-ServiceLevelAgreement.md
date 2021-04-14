---
Scope: Entire system, single API
Phases: Transition from development to operations, commercial use
Roles: API Owner Product Owner, Application Architect
Activities: Stepwise Service Design, Step 6
Abstraction/Refinement Level: Concrete, elaborate 
---


Artifact/Template: *Service Level Agreement (SLA)*
--------------------------------------------------

> *A Service Level Agreement (SLA) answers the following questions: "How can an API client learn about the specific quality-of-service characteristics of an API and its operations? How can these characteristics and the consequences of not meeting them be defined in a measurable way?"* <!-- MAP quote -->

### Motivation (Addressed Information Need) 
API providers want to deliver high-quality services while at the same time using their available resources economically. The resulting compromise can be expressed in an SLA. 

An API quality property that is often expressed in an SLA is the *availability* of the API/service (its uptime while returning correct results, that is). Other qualities may also be included, for instance response/reaction times when contacting support.


### Usage (Produced and Consumed When)
Providing an SLA for a service has the following benefits: 

* Service clients can decide whether a provider’s offerings match the client’s business needs from a business agility and vitality point of view.
* The service provider can communicate the attractiveness, availability, and performance goals of its services to clients without making unrealistic promises that may cause client dissatisfaction or even financial losses.

The [Microservice API Pattern (MAP)](https://microservice-api-patterns.org/) website captures the SLA artifacts as a pattern; the [Forces](https://www.microservice-api-patterns.org/patterns/quality/qualityManagementAndGovernance/ServiceLevelAgreement#sec:ServiceLevelAgreement:Forces) and the [Consequences](https://www.microservice-api-patterns.org/patterns/quality/qualityManagementAndGovernance/ServiceLevelAgreement#sec:ServiceLevelAgreement:Consequences) sections of the pattern, for instance, discuss the pros and cons of such artifact in depth.

### Template Structure and Notation(s)
An SLA comprises at least one *Service Level Objective*, which specifies a measurable aspect of the service the provider agrees to uphold:

![SLA Structure (Source: MAP Website)](https://www.microservice-api-patterns.org/patterns/quality/qualityManagementAndGovernance/plantuml-images/42eccd72824320a88d354f225b467c2c461e7386.png)

The [SLA pattern description on the MAP website](https://www.microservice-api-patterns.org/patterns/quality/qualityManagementAndGovernance/ServiceLevelAgreement#sec:ServiceLevelAgreement:Solution) provides detailed information.


### Example(s)
SLAs are common with large cloud providers, see for example:

* [Amazon Compute Service Level Agreement](https://aws.amazon.com/compute/sla/)
* [SLA for Azure Functions](https://azure.microsoft.com/en-us/support/legal/sla/functions/v1_0/) 
* Google's [Compute Engine Service Level Agreement](https://cloud.google.com/compute/sla).

A fictitious example for a *Payroll SLO* is given on the [MAP website](https://www.microservice-api-patterns.org/patterns/quality/qualityManagementAndGovernance/ServiceLevelAgreement#sec:ServiceLevelAgreement:Example):

> The payroll service has a response time of maximally 0.93 seconds. The response time is measured from the time the request arrives at the API endpoint until the response has been fully processed. 
> The Payroll SLO will be met for 99% of the requests, otherwise the customer will receive a discount credit of 10% on the current billing period. To receive a credit the customer must submit a claim to our customer support center including the dates and times of the incident.


### Tools
No tools are needed to specify SLAs, but it is recommended to create a project or even company-wide template that serves as a guidance and checklist for completeness. 

The emerging [Microservice Domain-Specific Language](https://microservice-api-patterns.github.io/MDSL-Specification/optionalparts) (MDSL) supports SLA modeling in an experimental and optional part of the language. 


### Hints and Pitfalls to Avoid

* Striking a balance between attractiveness and at the same time trustworthiness and accountability in your SLA and SLO commitments can be a challenge. 
* The level of detail and the trade off between provider commitments and customer/client obligations also depend on the visibility and reach of a system/API and the consequence of not meeting its SLA: an internal SLA often can be more aggressive, while an SLA for external clients might be legally binding. 
* SLAs usually require legal clearance.

### Origins and Signs of Use
[Site Reliability Engineering (SRE)](https://cloud.google.com/blog/products/gcp/sre-vs-devops-competing-standards-or-close-friends) teams use SLAs to guide the development and delivery of new features: if an SLO is overachieved, the team has a so-called "error budget" where it can risk breaking the SLO. On the other hand, if an SLO is at the point of breaking, the team has to be more careful with changes and slow down (@BeyerJonesPetoffMurphy:2016).

The pattern text on the MAP website collects additional ["known uses"](https://www.microservice-api-patterns.org/patterns/quality/qualityManagementAndGovernance/ServiceLevelAgreement#sec:ServiceLevelAgreement:KnownUses).


### Related Artifacts and Practices (incl. Alternatives)
SLAs are often part of an [API Description](SDPR-APIDescription.md), or complement technical service contracts. 

Terms and Conditions (Ts&Cs) documents of API use are less formal, but similar in their goals. Ts&Cs and SLAs may be used together and can then complement and cross-reference each other. 

<!-- TODO cite SRE book again? -->

### More Information
The DPR activity [Stepwise Service Design](../activities/SDPR-StepwiseServiceDesign.md) talks about SLAs in Step 6.

See this Userlike blog post ["Service Level Agreement &mdash; Best Practices & Crucial Elements"](https://www.userlike.com/en/blog/service-level-agreement-best-practices).

The SLA concept has been mined as a pattern in "Interface Quality Patterns &mdash;  Communicating and Improving the Quality of Microservices APIs" (@StockerZimmermannEtAl:2018).


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Service Level Agreement"
author: Mirko Stocker (STX), Olaf Zimmermann (ZIO)
date: "03, 31, 2021"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

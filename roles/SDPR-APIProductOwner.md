---
Category: Business, technical leadership  
Activities: Service design, rollout
---

<!-- Word budget: 500-1000 (2-3 A4 pages); the artifacts descriptions should be readable in a few minutes (while practice descriptions will be a bit more elaborate) -->

Role: *API Product Owner*
---------------------------

### Persona 
<!--Name of stakeholder (of architecture and architectural artifacts) and its main concerns-->
An API product owner operates at the intersection where API clients and providers meet. This leads to a constant struggle between fulfilling clients' wishes and keeping the API on [POINT](https://ozimmer.ch/practices/2021/03/05/POINTPrinciplesForAPIDesign.html) and economically viable.

<!-- We decided to call it API Product Owner based on various definitions we found:

* [Broadcom](https://techdocs.broadcom.com/content/broadcom/techdocs/us/en/ca-enterprise-software/layer7-api-management/api-portal-legacy/3-5/manage-the-api-portal/functionality-by-user-role/internal-roles.html): API Owner: The person within your organization tasked with defining, publishing and monetizing, or promoting your APIs. On the API Portal, this person will be responsible for: ..
* [DZone](https://dzone.com/articles/api-ownership-for-the-modern-enterprise) has a Business API Owner and Technical API Owner
* [Tyk](https://tyk.io/essentials-of-api-product-ownership/) has the API product owner as a specialization of the product owner.
* [Apigee](https://medium.com/apis-and-digital-transformation/without-an-api-product-owner-your-apis-have-a-limited-lifespan-6df98d6ad281) has a "API product owner" and describe them as "Essentially, API product owners are the end-user advocate — and that’s for both for developers using the APIs and the people touching the applications powered by those APIs." 
-->

### Information and Modeling Need
<!-- derived from role responsibilities (articulated in the form of user stories)-->

API product owners care about and require/produce information related to: 

* Stakeholder concerns
* User experience
* Documentation, for example product road maps and API descriptions 
* Service level agreements
* Quick overviews of external interfaces and internal structure of the produced software
* Cost vs. benefit of feature development, supportability, and evolvability of their products and services

Just like application and integration architects specializing on distributed systems and APIs, they [wear six hats](http://www.debonogroup.com/services/core-programs/six-thinking-hats/) according to a [blog post by James Higginbotham](https://tyk.io/the-six-hats-of-the-api-architect/) (and his Twitter network): API trendspotter, API reviewer, API risk assessor, API advocate, API creator, and API planner.


### Collaborations

Roles to communicate with: 

* API clients
* [Application and Integration Architect](./DPR-ApplicationArchitectRole.md) 
* Other roles not yet describes in DPR yet: domain experts, DevOps staff, etc.

### Consumed/Produced Artifacts and Applied Practices

The API product owner  participates in these activities (tasks):

* [SMART NFR Elicitation](../activities/DPR-SMART-NFR-Elicitation.md)
* [Stepwise Service Design](../activities/SDPR-StepwiseServiceDesign.md)

The API product owner is responsible for the following artifacts: 

* [User Stories](../artifact-templates/DPR-UserStory.md) and/or [Use Cases](../artifact-templates/DPR-UseCase.md)
* [API Description](../artifact-templates/SDPR-APIDescription.md) a.k.a. service contract artifact
* [Service Level Agreements](../artifact-templates/SDPR-ServiceLevelAgreement.md) and [Rate Plans](https://microservice-api-patterns.org/patterns/quality/qualityManagementAndGovernance/RatePlan).

In a contributor or reviewer role, (s)he might also work with/on: 

* [Domain Model](../artifact-templates/DPR-DomainModel.md)
* [Candidate Endpoint List](../artifact-templates/SDPR-CandidateEndpointList.md)
* [Refined Endpoint List](../artifact-templates/SDPR-RefinedEndpointList.md)


### More Information

["Beyond Software Architecture"](https://www.amazon.de/Beyond-Software-Architecture-Sustaining-Addison-Wesley-ebook/dp/B003YL3P0E) by Luke Hohmann is not API-specific, but covers software product management. <!-- TODO add bibtex -->


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): API Product Manager"
author: Mirko Stocker (STX), Olaf Zimmermann (ZIO)
date: "03, 27, 2021"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

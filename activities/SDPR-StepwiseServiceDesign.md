---
Scope: Presentation and business logic layer
Phases: "Analysis, design"
Roles: "API product owner, integration architects, API designers"
Input: "(Non-)functional requirements, domain model/layer design"
Output: "Service contract (with technology mapping and protocol binding), SLA"
Abstraction/Refinement Level: Both conceptual (platform-independent) and technical (platform-specific)
---

## Activity/Technique: *Stepwise Service Design*
also known as: Contract-First, Incremental/Top-Down Service Identification, Iterative API Design and Refinement, Evolutionary Integration Architecting <!-- "eiSD"? -->

### Context
The [Microservice API Patterns (MAP)](https://microservice-api-patterns.org/) website motivates the need for Application Programming Interface (API) and (micro-)service design as this:  

"While much has been said about microservices in general and about supporting infrastructure architectures, the actual service design has received less attention:

* How many services should be exposed? What is an adequate size for them? <!-- TODO 2023 (L): review [FB] and [Q]s: + 1. what does "exposed" mean, 1:n for deployment unit:service? 2. size of API or underlying implementation (breadth, depth)? 3. "remote services" and 3. "service-client interactions" (for LC) -->
* How to ensure that services are loosely coupled? How much data should they exchange, and how often does this happen?
* What are the most suitable message representations? How to agree on the meaning of each message?"

API and service design have high [architectural significance](https://en.wikipedia.org/wiki/Architecturally_significant_requirements), but also have to be implemented, obviously. Hence, software [architects](/roles/DPR-ApplicationArchitectRole.md) and developers collaborate on this activity; [API owners](/roles/SDPR-APIProductOwner.md) initiate and oversee this work.


### Goal and Purpose (When to Use and When not to Use)

> *As an architect and/or product owner, I want to design loosely coupled services that expose business capabilities through well-defined, quality-driven APIs so that clients can satisfy their information needs and initiate server-side processing efficiently.*  

This activity has the objective to answer the questions raised under 'Context' above. It delivers:

1. Platform-independent *interface specifications*, including [API Description a.k. a. service contract](/artifact-templates/SDPR-APIDescription.md) and [Service Level Agreement (SLA)](/artifact-templates/SDPR-ServiceLevelAgreement.md).
2. At least one serialization *technology mapping* and communication *protocol binding* for this design (for instance, JSON schemas and HTTP resource contracts). 

This activity includes [Domain-Driven Design (DDD)](./DPR-TacticDDD.md). It is commonly used when [Backend Integrations](https://microservice-api-patterns.org/patterns/foundation/BackendIntegration) are realized. It can also be applied in [Frontend Integration](https://microservice-api-patterns.org/patterns/foundation/FrontendIntegration); in that case, [User Interface Mocking](./DPR-UserInterfaceMocking.md) is an alternative and complementary activity. 


### Instructions (Synopsis, Definition)

There is no single path to APIs and service endpoints of quality and style. When "surfing" the Web searching for advice regarding API design and (micro-)service size (or asking the elders), one "rides" at least seven "waves" of analysis and design work (called steps from now on):  

![Service Design Workflow: Seven Steps from Analysis to Design, Realization, Evolution](/activities/images/SDPR-SevenServiceDesignSteps.jpg)


<!-- miro (iframe): 
<iframe width="640" height="360" src="https://miro.com/app/embed/o9J_ko6VkCM=/?" frameborder="0" scrolling="no" allowfullscreen></iframe>
-->

1. *Understand the business problem as well as stakeholder wants and needs, including desired system qualities.* 
    * Before anything can be designed, we ought to know: what should be delivered (on the project, by the software), and why? Which quality properties are desired? 
    * Arnaud Lauret suggests the notion of API goals, driven by end user wants and frontend application needs, in ["The Design of Web APIs"](https://apihandyman.io/about/#my-book-the-design-of-web-apis) (@Lauret:2019).

2. *Model the business domain and group related capabilities*, for instance by applying [Tactic DDD](DPR-TacticDDD.md) and [Strategic DDD](DPR-StrategicDDD.md) (@Vernon:2013).
    * [Event storming](https://www.eventstorming.com/) is a workshop technique supporting this step. Many alternative forms of business-driven forward engineering exist and can be blended in. Two examples are event-driven process chains and use case scenario walkthroughs.
    * If "buy" or "rent" is an option (rather than "build" from scratch only), also reverse engineer the interfaces and domain models of the existing systems to be bought or rented and integrated and model them on the same level of detail as those representing the results from forward engineering.
    * No matter which technique or template you use to elicit the related Non-Functional Requirements (NFRs), do so in a [SMART, value- and risk-driven](DPR-SMART-NFR-Elicitation.md) way (@Fairbanks:2010). [Quality storming](https://speakerdeck.com/mploed/quality-storming) is one option.

3. *Split applications into frontends and backends*, again applying [Strategic DDD](DPR-StrategicDDD.md). 
    * Use patterns for distributed computing while doing so (@Buschmann:2007, @RenzelKeller:1997).     
    * Apply recognized system decomposition techniques, considering coupling criteria, during this step. The method promoted by [Service Cutter](https://github.com/ServiceCutter/ServiceCutter/wiki/Coupling-Criteria), for instance, is based on a catalog of such criteria. Context Mapper integrated this approach, see ["Context Map Suggestions with Service Cutter"](https://contextmapper.org/docs/service-cutter-context-map-suggestions/).
    * While designing, capture the [architectural decisions](DPR-ArchitecturalDecisionCapturing.md) made and [model](DPR-ArchitectureModeling.md) the resulting architecture.

4. *Create a [Candidate Endpoint List](../artifact-templates/SDPR-CandidateEndpointList.md)* that identifies potential API endpoints and their roles. 
    * For each candidate endpoint, foresee a [Remote Facade](https://martinfowler.com/eaaCatalog/remoteFacade.html) that exposes [Data Transfer Objects (DTOs)](https://martinfowler.com/eaaCatalog/dataTransferObject.html) in the request and response messages of its API operations to decouple the (published) languages of frontends and backends and to optimize the message exchange over the network w.r.t exchange frequency and message size. 
    * Consider adding a [Service Layer](https://martinfowler.com/eaaCatalog/serviceLayer.html) to further encapsulate the business logic, to control transactions and to coordinate responses (@Fowler:2002). Note that the term *service* is overloaded; it can refer to remote API services (and this is what this activity is all about), but also to supporting local application, domain, and infrastructure services (see description of [Tactic DDD](./DPR-TacticDDD.md)).
    * Capture your architectural decisions about these patterns as well as resulting additional decisions. 

5. *Specify operation responsibilities and data formats to yield a [Refined Endpoint List](../artifact-templates/SDPR-RefinedEndpointList.md)* and *map the endpoints to existing or new API providers*.
    * If needed, *decompose monolithic backends into (micro-)services* (@Newman:2015) to promote flexibility and scalability if these are desired qualities and your software engineering (and operations) toolbox is rich and mature enough. 
    * Criteria-based decomposition approaches such as those listed under Step 3 as well legacy modernization and transformation techniques can be used. See for instance the [Strangler Fig Application](https://martinfowler.com/bliki/StranglerFigApplication.html) approach described by Martin Fowler and ["Working Effectively with Legacy Code"](https://www.infoq.com/podcasts/working-effectively-legacy-code/) by Michael Feathers. <!-- TODO (v13) fact check -->
    * [*Refactor*](https://www.ifs.hsr.ch/Architectural-Refactoring-for.12044.0.html?&L=4) (@Zimmermann:2017) the preliminary architecture from the previous steps along the way (including the remote facades and DTOs). Document and justify these conceptual and technology-related architectural decisions and add the resulting architectural decision records to the decision log from Steps 3 and 4. <!-- TODO (v2): cite S. Newman's 2nd book instead of first one -->

6. Once the refined endpoint list is somewhat stable, *decide for integration technologies* (protocols such as plain HTTP, GraphQL, or gRPC; message exchange formats such as JSON and XML) and implement stubs (or a minimum viable API product).
    * Integrate and test these stubs; iterate and revise the list as needed. If the results are good enough, go ahead and *specify service contracts including protocol bindings and technology mappings* in an [API Description](../artifact-templates/SDPR-APIDescription.md) also known as service contract. 
    * Optionally, establish [Service Level Agreements](../artifact-templates/SDPR-ServiceLevelAgreement.md) and [Rate Plans](https://microservice-api-patterns.org/patterns/quality/qualityManagementAndGovernance/RatePlan). 
    * Also decide on (micro-)service deployment technologies and infrastructure middleware such as [API gateways](https://microservices.io/patterns/apigateway.html), load balancers, and container orchestration engines as well as cloud offerings (@Fehling:2014), again capturing your architectural decisions in the log.
    
7. *Improve and evolve the API design* and its implementation, for instance adjust endpoint and operation numbers as well as request and response message structures to meet the desired runtime qualities (for instance, performance and scalability).
    * Apply [(micro-)service API design and evolution patterns](https://microservice-api-patterns.org/patterns/evolution/) along the way (@Daigneau:2011, @Zimmermann:2020).

*Note:* The seven-step sequence does not suggest sequential or one-time execution ("Big Design Upfront, BDUF"). Whenever you learn something new in later steps, you can return to previous ones; whenever you believe you need to jump ahead to learn more about the technologies, existing systems, and so on, you can and should do so. 

In DPR, the seven top-level steps and activities are supported by one or more [*artifact templates*](../artifact-templates): 

1. Functional requirements are often communicated and specified as [User Stories](../artifact-templates/DPR-UserStory.md) and/or [Use Cases](../artifact-templates/DPR-UseCase.md). 
2. [Domain Models](../artifact-templates/DPR-DomainModel.md) on different levels of elaboration and refinement capture the results of Object-Oriented Analysis and Design (OOAD) in general and [Tactic DDD](DPR-TacticDDD.md) in particular; [Context Maps](../artifact-templates/DPR-StrategicDDDContextMap.md) result from [Strategic DDD](DPR-StrategicDDD.md).
3. [Context Maps](../artifact-templates/DPR-StrategicDDDContextMap.md) can also record the results of systematic system decomposition work. Many templates exist for [Architectural Decision Capturing](DPR-ArchitecturalDecisionCapturing.md), which has emerged from an unwelcome but important side activity to a full-fledged practice. DPR includes [Y-Statements](../artifact-templates/DPR-ArchitecturalDecisionRecordYForm.md) that can be captured in [Markdown Architectural Decision Records](https://github.com/adr/madr) or directly in the code. Many options for visualizing/diagramming architectures exist; DPR lists a few practices, notations, and tools in the [Architecture Modeling](DPR-ArchitectureModeling.md) activity. Enterprise Architecture Management and frameworks such as TOGAF are out of scope of DPR at present.
4. The [Candidate Endpoint List (CEL)](../artifact-templates/SDPR-CandidateEndpointList.md) balances flexibility and expressivity. It translates user stories/use cases and domain model elements into API requirements. <!-- Online articles, for instance by [Mike Amundsen](https://www.infoq.com/articles/web-api-design-methodology/), and an [ebook by Phil Sturgeon](https://apisyouwonthate.com/books/build-apis-you-wont-hate) provide pragmatic and tangible advice for this step. -->  
5. The [Refined Endpoint List (REL)](../artifact-templates/SDPR-RefinedEndpointList.md) then is more precise and assertive. It can specify endpoint roles and operation responsibilities by referencing patterns, and also identify data formats and media types as well as provider implementation candidates and related decisions.
6. Step 6 from above should be "business as usual" for agile full stack developers and integration specialists for the most part, yielding an expressive, understandable [API Description](../artifact-templates/SDPR-APIDescription.md). Both the abstract "port" level as well as technology-specific "adapter" bindings should be covered in it; both business and technical information has to be published in it. <!-- TODO (v2) write about "API TDD", jUnit, Postman, SOAPUI, Swagger tools, etc.; bring in review checklist from @Lauret:2019 (can also go to Step 7) -->
7. Patterns from two categories in [Microservice API Patterns (MAP)](https://microservice-api-patterns.org/) are eligible here, with the [Quality Category](https://microservice-api-patterns.org/patterns/quality/) and the [Evolution Category](https://microservice-api-patterns.org/patterns/evolution/) being eligible in particular.

*Note*: It cannot be emphasized enough that All these artifacts can be drafted, revised, and completed iteratively and incrementally. And they should only be created if they serve a purpose in the given project context.

<!-- 
The architectural refactoring activity is not documented in DPR (this repository) yet, but introduced [here (overview)](https://www.infoq.com/articles/architectural-refactoring/) and [here (more elaborate version with a draft catalog)](http://www.2015.summersoc.eu/wp-content/uploads/2015/07/2.4.ZIO-SummerSoC2015-ArcRefCloudv10p.pdf); it can be supported by tools such as [Context Mapper](https://contextmapper.org/docs/architectural-refactorings/) and [Service Cutter](https://contextmapper.org/docs/service-cutter-context-map-suggestions/).

For API testing, refer to:

* https://dzone.com/articles/api-testing-and-automation-101-the-essential-guide 
* https://techbeacon.com/app-dev-testing/11-top-open-source-api-testing-tools-what-your-team-needs-know 
* https://www.guru99.com/top-6-api-testing-tool.html 

-->


### Example(s)
DPR [Tutorial 1](https://github.com/socadk/design-practice-repository/blob/master/tutorials/DPR-Tutorial1.md) applies the seven steps to an online shop example. [MAP Tutorial 2](https://microservice-api-patterns.org/patterns/tutorials/tutorial2) provides an additional application example.

In the end-to-end demo for tool-supported API design and service identification ["Domain-Driven Service Design with Context Mapper and MDSL"](https://medium.com/olzzio/domain-driven-service-design-with-context-mapper-and-mdsl-d5a0fc6091c2), the seven steps are applied, and partially automated with the help of [Context Mapper](https://contextmapper.org/news/2020/08/06/v5.15.0-released/) and [MDSL](https://microservice-api-patterns.github.io/MDSL-Specification/) tools such as an OpenAPI generator: 

![Service Design Example (BPMN)](/activities/images/SDPR-ServiceDesignSteps.png)

Finally, the microservices in the sample application [Lakeside Mutual](https://github.com/Microservice-API-Patterns/LakesideMutual) contain several [Remote Facades](https://martinfowler.com/eaaCatalog/remoteFacade.html) implemented as HTTP resources and DTOs that are serialized into JSON.

<!-- 
https://www.bpmn-sketch-miner.ai/# 

Contract-First API Design:

Step 1. Elicit Functional Requirement(s)
Step 2. Transform into Domain Analysis Model
Step 3. Switch from Analysis to Design
Step 4. Refine the High-Level Design
Step 4a (optional). Generate Application Stub
Step 5. Advance to System Contexts
Step 6. Generate MDSL Service Contracts
Step 7. Convert into OpenAPI Specification (OAS)
Step 7a (optional). Use OpenAPI Specification to Update Application Stub
-->


### Benefits vs. Effort (Expected Benefits, Skill Levels)
The more clients an API has and the longer it runs and the more mission-critical it is, the more it pays off to invest in contract-first API and service design. 


### Hints and Pitfalls to Avoid

Let us repeat and emphasize again:

* *Avoid &mdash; or spot and overcome &mdash; [analysis paralysis](https://en.wikipedia.org/wiki/Analysis_paralysis)*. Acknowledge the general rules of method engineering, including: <!-- source: readmes for activities, artifacts, roles -->
1. If in doubt, leave it out.
2. Do not follow templates blindly, but adopt them to your needs. 
3. Context matters. 
* *Do not follow the steps sequentially* but iterate, refactor, evolve stepwise. Iterate, refactor, evolve again. Iterate, refactor, evolve continuously. The logical ordering of the seven steps by no means implies waterfall or [BDUF](https://en.wikipedia.org/wiki/Big_Design_Up_Front). 

You might want to *apply patterns* to optimize API qualities when evolving it:

* Never forget the business vision, stakeholder concerns, and project goals while deciding, designing, coding, debugging, testing, documenting, and so on.
* Do not over-fetch and do not under-fetch; adding [Pagination](https://microservice-api-patterns.org/patterns/structure/compositeRepresentations/Pagination) or [Wish Lists](https://microservice-api-patterns.org/patterns/quality/dataTransferParsimony/WishList) to an API operation signature slices the response payload and allows clients to specify what data they need (GraphQL has this design goal).
* Respect technology- and platform-specific design guidelines, for instance those in the "RESTful Web Services Cookbook" (@Allamaraju:2010).


### Origins and Signs of Use
If [OpenAPI](https://swagger.io/specification/) specifications are provided, either contract-first or code-first API design has been practiced. Usage of DDD patterns such as *Published Language* also may indicate use.

The DDD DSL tool Context Mapper supports some of the steps with its [model transformations](https://contextmapper.org/docs/rapid-ooad/), [architectural refactorings](https://contextmapper.org/docs/architectural-refactorings/), and [service contract generation](https://contextmapper.org/docs/mdsl/).


### Related Content

#### Performing Roles and Related Artifacts (Synopsis)

Roles: 

* [Application Architect](../roles/DPR-ApplicationArchitectRole.md)
* [API Product Owner](../roles/SDPR-APIProductOwner.md)
* Agile developers

Produced artifacts: 

* Architectural models (taking different viewpoints) and [CRC Cards](../artifact-templates/DPR-CRCCard.md)
* [Candidate Endpoint List](../artifact-templates/SDPR-CandidateEndpointList.md) and [Refined Endpoint List](../artifact-templates/SDPR-RefinedEndpointList.md)
* [API Description](../artifact-templates/SDPR-APIDescription.md) a.k.a. service contract
* [Service Level Agreement](../artifact-templates/SDPR-ServiceLevelAgreement.md)
* Decision log of [Y-Statements](../artifact-templates/DPR-ArchitecturalDecisionRecordYForm.md) 


#### Practices and Techniques (Refinements, Guides)

<!-- TODO Could point at Architecture Modeling and UI Mocking here -->

<!-- Taken out of final Q1-2021 release 
**EXPOSE.** Early presentations on MAP featured six endpoint/service identification and realization steps called EXPOSE (see [this conference presentation]() 2018 seminar presentation) TODO link 

![Proposal of Service Design Steps: EXPOSE](/activities/images/MAP-EXPOSEStepsInServiceDesign.png)
-->

**Code first.** Sometimes, a bottom-up approach exposing already existing [solution-internal APIs](https://microservice-api-patterns.org/patterns/foundation/SolutionInternalAPI) is preferred, in particular when only a few straightforward API calls are required: standardized or framework-specific annotations (or other forms of configuration) call our services, operations, and parameters (and map them to JSON and Web server settings). Such code-first approach is supported well, for instance in Web Frameworks; it runs the risk of not meeting API client requirements and violating API design best practices &mdash; unless a dedicated [Service Layer](https://martinfowler.com/eaaCatalog/serviceLayer.html) and/or [Remote Facades](https://martinfowler.com/eaaCatalog/remoteFacade.html) are included in the architecture to decouple application and domain logic from integrations and interfaces.

Bottom-up *code-first* API design can be combined with this top-down contract-first design activity to yield a *meet-in-the-middle* approach (note that code-first runs the risk of exposing provider-side implementation details in the API contract, which violates the information hiding principle).


### More Information 

While written with the Web and RESTful HTTP in mind, many of the existing informal "methods" (or design heuristics) can also be applied when other technologies are chosen:

* Arnaud Lauret, "The Design of Web APIs" (@Lauret:2019).
* Presentations, [blog posts](http://amundsen.com/blog/), and books by Mike Amundsen (@Amundsen:2020).
* Blog posts such as ["Moving to API design-first in an Agile world"](https://tyk.io/moving-api-design-first-agile-world/), ["Before you design your API, model your API"](https://tyk.io/before-you-design-your-api-model-your-api/), and ["Techniques For Designing Your API and Microservices"](https://tyk.io/api-design-methodologies/) <!-- TODO more link(s) --> by James Higginbotham. 
* Phil Sturgeon's website and ebooks themed ["APIs you won't hate"](https://apisyouwonthate.com/).
* Martin Fowler's "Patterns of Application Architecture" introduces the patterns Service Layer, Remote Facade, [Data Transfer Object (DTO)](https://martinfowler.com/eaaCatalog/dataTransferObject.html) (@Fowler:2002).

<!-- TODO 2023: extend more information section 

* More on PfAD MAP book, more from JH (second paragraph)
* (tbd) The [API Academy](https://apiacademy.co/) "provides expertise and best practices for the strategy, architecture, design and security of enterprise-grade APIs and microservices".
* CAPs https://kgb1001001.github.io/cloudadoptionpatterns/Cloud-Native-Architecture/ 
* (tbd) https://www.infoq.com/articles/api-first-integration/ 

-->

[Tutorial 1 in MAP](https://www.microservice-api-patterns.org/patterns/tutorials/tutorial1) explains how patterns can mitigate quality issues. <!--  Even if you are not yet thinking about the next version of your API, it is good to know which evolution strategies and patterns exist. --> [Tutorial 2](https://microservice-api-patterns.org/patterns/tutorials/tutorial2) includes more patterns and pattern categories. MAP now forms the core of the ["Patterns for API Design — Simplifying Integration with Loosely Coupled Message Exchanges"](https://medium.com/nerd-for-tech/api-patterns-website-redesigned-and-sample-book-chapter-available-df9daf4b5e15) book (@PatternsForAPIDesign:2022).

A [presentation](https://www.slideshare.net/launchany/gluecon-2019-beyond-rest-moving-to-eventbased-apis-and-streaming) by James Higginbotham talks about messaging and streaming in the context of API design and REST.

The SOAD project 2006 to 2009 compiled a number of architectural decisions that are required when designing service-oriented architectures. Being independent of application genre and architectural style, the meta issues in Table 2 from the SOAD paper ["Architectural Decision Identification in Architectural Patterns"](https://soadecisions.org/download/SOAD-SHARK2012v13Final.pdf) can guide the decision making in Steps 3 to 7:

![Meta Issues (Decisions Required) in Service and API Design](/activities/images/SOAD-MetaIssuesShark.png)

Note that in microservices architectures, more options for these decisions (in transition from meta issues to actual decisions required) are available, and the decision drivers may vary too. See [this blog post](https://ozimmer.ch/patterns/2020/07/06/MicroservicePositions.html) and [this article](http://rdcu.be/mJPz) for more information on microservices as an implementation approach to service-oriented architectures.

### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Stepwise Service Design"
author: Olaf Zimmermann (ZIO)
date: "01, 16, 2023"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

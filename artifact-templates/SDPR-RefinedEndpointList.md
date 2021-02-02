---
Scope: Remote service layer of backend
Phases: Late analysis, early design (any iteration)
Roles: Service Designer, Integration Architect, Web Developer
Activities: Stepwise/Incremental Service Design (Contract First), Step 5
Abstraction/Refinement Level: technology-agnostic, platform-independent
---


Artifact/Template: Refined Endpoint List (REL)
----------------------------------------------
also known as: Ordered Endpoint List, Final API Action Plan, Detailed API Roadmap, Resource Specifications <!-- from MAP -->


### Motivation (Addressed Information Need) 

A REL answers the following questions:

* *How can high-level specifications for the required API operations be added to the endpoint descriptions (without getting lost in syntactic details or "review wars" caused by technology beliefs)?* 
* *In particular, how can API endpoint and operation responsibilities be found and captured rapidly (without engaging in premature detailed decision making)?*


### Usage (Produced and Consumed When)
 
A Refined Endpoint List (REL) is produced in Step 5 in [stepwise service design activity](../activities/SDPR-StepwiseServiceDesign.md), remote service layer design (the API provides the remote facades).

<!-- * Step 5 of the EXPOSE technique -->

Mike Amundsen's [seven-step Web API design method](https://www.infoq.com/articles/web-api-design-methodology/) includes "Reconcile Magic Strings" as step 3 and "Select a Media Type" as step 4; REL creation and population roughly corresponds to these two steps. The REL corresponds to the "updated API goal canvas that Arnaud Lauret proposes in Chapter 2 of "The Design of Web APIs" (@Lauret:2019).


### Template Structure and Notation(s)
Record your design results in list or table form. 

Start with a list of endpoints with their visibility and direction and link to requirements and domain model, for instance structured as this: 

```
API name:  [name]

Identified in: [user story, domain model element, architecture diagram]
Direction: (Frontend Integration | Backend Integration)
Visibility: (Public API | Community API | Solution-Internal API )

Endpoints in this API (and their architectural role): 

1. Endpoint 1: [name], [role]
2. Endpoint 2: [name], [role]
3. Endpoint 3: [name], [role]
```

<!-- older proposal:
This is an elaborate proposal, referencing several categories in [Microservice API Patterns (MAP)](https://microservice-api-patterns.org/):
| Integration Type ([Foundation](https://microservice-api-patterns.org/patterns/foundation/) pattern) | Visibility ([Foundation](https://microservice-api-patterns.org/patterns/foundation/) pattern) | API/Endpoint Name | Source (Artifact) | Features/Capabilities ([Responsibility](https://microservice-api-patterns.org/patterns/responsibility/) Analysis) |  
|------------------|------------|------|--------|--------------|
| ... | ... | ... | ... | ... |
-->

For each API endpoint listed as described above, specify its responsibilities and signature on a platform- and technology-neutral, yet concrete level of detail:

```
| Endpoint | Operation   | Responsibility Pattern (MAP) | Published Language (Request and Response Message Payload) | Media Type/Profile |
|----------|-------------|------------------------------|--------------------------------------|--------------------|--------------------|
| [name]   |             | [endpoint role]              |                                      |                    |                    |
|          |  [name]     | [operation responsibility]   | [abstract in/out data syntax]        | [custom, standard] |                    |
```

<!-- Step 5 of activity has more here: service layer, remote facade, DTO ADs; feature in tutorial (not needed here) -->

Make the following decisions and record them as described in the activity [Architectural Decision Capturing](DPR-ArchitecturalDecisionCapturing.md):

* Communication protocol (HTTP? gRPC? other?) and REST maturity level 
* Message exchange format (DTO design), for instance MIME type when using RESTful HTTP (refining a platform-neutral DTO design in UML or MDSL) and media/content type profile:
    * JSON? XML? Other message exchange format?
    * [Application-Level Semantic Profiles (ALPS)](https://tools.ietf.org/html/draft-amundsen-richardson-foster-alps-03)? [JSON-LD](https://json-ld.org/) + Hydra? [Microformats](http://microformats.org/)?
* Security design (CIA)

Make these decisions with an API-wide scope or decide separately per endpoint/per operation if the [non-functional requirements](DPR-SMART-NFR-Elicitation.md) require such differentiation. Update your [architecture modeling](DPR-ArchitectureModeling.md) artifacts from previous steps accordingly.


### Example(s)

This example of a REL continues and details the example given in the [Candidate Endpoint List](SDPR-CandidateEndpointList.md) artifact:

| Endpoint | Operation   | Responsibility Pattern (MAP) | Published Language (Request and Response Message Payload) | Media Type/Profile |
|----------|-------------|------------------------------|-----------------------------------------------------------|--------------------|
| Customer |             | [*Master Data Holder*](https://microservice-api-patterns.org/patterns/responsibility/informationHolderEndpointTypes/MasterDataHolder)         |              | microformats or ALPS (tbd) |
|          |  Find (GET) |  [*Retrieval Operation*](https://microservice-api-patterns.org/patterns/responsibility/operationResponsibilities/RetrievalOperation) | *in:* QueryString (tbd), *out:* CustomerDTOSet | |
|          |  Read (GET) | [*Retrieval Operation*](https://microservice-api-patterns.org/patterns/responsibility/operationResponsibilities/RetrievalOperation) | *in:* `CustomerId":ID<int>`, *out:* `CustomerDTO` <!-- MDSL snippets --> |  |
|          |  Update (PUT) | [*State Creation Operation*](https://microservice-api-patterns.org/patterns/responsibility/operationResponsibilities/StateCreationOperation)  | *in:* `{"CustomerId", "newPhoneNumber", "newAddress"}`, *out:* `{"statusInformation", "linkToUpdatedCustomerResource}` <!-- MDSL snippets --> | |

<!-- TODO (v2) SSD step 5 has more, for instance provider/backend mapping -->

Note that one could use a structure that deviates from the template. This is ok according to our second rule of method adoption "do not follow templates blindly, but adopt them to your needs".

<!-- See this [end-to-end service design demo](https://ozimmer.ch/practices/2020/06/10/ICWEKeynoteAndDemo.html) for more technical contracts. -->


### Tools

A few examples of tools include:

* The Freemarker generator in the [MDSL tools](https://microservice-api-patterns.github.io/MDSL-Specification/updates/) can generate Markdown reports formatted according to the above suggestions for RELs.
* SwaggerHub and its competitors support Open API; SoapUI supports both WSDL/XML schema and RESTful HTTP. A REL provides the input to technology-specific API design and implementation within such tools.
* [JHipster](https://www.jhipster.tech/doing-api-first-development/) can be used to quickly turn OpenAPI specifications into Spring Boot applications.


### Hints and Pitfalls to Avoid

* Do not mechanically turn all application domain (micro-)layer artifacts such as Domain-Driven Design (DDD) pattern instances or facades into (micro-)services, but follow a recognized or homegrown identification method. For instance, the DDD *Bounded Context* is seen to form an upper boundary for microservice size, while *Aggregates* serve as lower boundary.
* Prioritize the nonfunctional requirements as many of them conflict with each other (see coverage of top-level forces in the language overview).
* Reuse already modelled data representation elements (ALPS, microformats, etc.).
* Define a [Service Level Agreement](SDPR-ServiceLevelAgreement.md) with at least one service level objective per operation (or endpoint). 
* Specify at least one test case per user story and API operation.
* Evaluate whether your API design and implementation can benefit from [Test-Driven Development (TDD)](https://www.agilealliance.org/glossary/tdd/) and [Behavior-Driven Development (BDD)](https://dannorth.net/introducing-bdd/) and supporting tools such as [Cucumber](https://cucumber.io/). 

<!-- From JUG 2019 slide (is there a newer version?) -->

The book "Implementing Domain-Driven Design" by V. Vernon provides the following more platform- and technology-specific advice (enhanced with knowledge nuggets from and blog posts and presentations):

* Avoid 1:1 pass-through between layers (in particular, interface layer and application/domain layer). <!-- note that https://www.ibm.com/garage/method/practices/code/domain-driven-design seems to contradict this hint at least to some extent -->
* When Bounded Contexts (BCs) are realized by API providers, one service API and IDE project for each team/system BC (a.k.a. microservice) should be foreseen.
* Aggregates supply API resources (or responsibilities) of service endpoints.
* DDD (application) services may be exposed as top-level (home) resources in BC endpoints as well.
* The Root Entity (also known as Aggregate Root), the Repository and the Factory in an Aggregate suggest top-level resources; contained entities yield sub-resources. The [MDSL generator in Context Mapper](https://contextmapper.org/docs/mdsl/) implements this mapping.
* Repository lookups become paginated queries (GET with search parameters).

Additional rules of thumb regarding the transition from DDD to API design (drawn from our experience and additional sources) are:

* Master data and transactional data go to different bounded contexts/aggregates and, in turn, endpoints.
* Creation requests to Factories become POSTs.
* Entity modifiers become PUTs or PATCHes.
* Value Objects appear in the custom MIME types representing resources.


### Origins and Signs of Use
The REL artifact is an unpublished candidate pattern in MAP, drawing upon experiences in the community. So unlike all other artifact templates, REL is an novel proposal in DPR Release 1.0.

Usage of the above list and table formats is a sign of use.


### Related Artifacts and Templates (incl. Alternatives)

* [Candidate Endpoint List](SDPR-CandidateEndpointList.md) 
* [API Description](SDPR-APIDescription.md)
* [Service Level Agreement](SDPR-ServiceLevelAgreement.md)


### More Information

* [Service Layer](https://martinfowler.com/eaaCatalog/serviceLayer.html) and related patterns (@Fowler:2002)
* Books on Web API design and RESTful HTTP (@Allamaraju:2010, @Lauret:2019) as well as related blog posts such as [those by J. Higginbotham](https://tyk.io/author/james-higginbotham/)
* gRPC guidelines, for instance this [style guide](https://developers.google.com/protocol-buffers/docs/style)
* GraphQL [learning resources](https://graphql.org/learn/) 
* WSDL/SOAP tips and tricks (@Zimmermann:2003)


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Refined Endpoint List (REL)"
author: Olaf Zimmermann (ZIO)
date: "02, 02, 2021 (Source: Project DD-DSE)"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

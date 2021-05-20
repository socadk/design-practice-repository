---
Scope: Remote service layer of backend
Phases: Late analysis, early design (any iteration)
Roles: Service Designer, Integration Architect, Web Developer
Activities: Stepwise/Incremental Service Design (Contract First), Step 5
Abstraction/Refinement Level: Technology-agnostic, platform-independent
---


Artifact/Template: *Refined Endpoint List (REL)*
------------------------------------------------
also known as: Ordered Endpoint List, Final API Action Plan, Detailed API Roadmap, Resource Specifications <!-- from MAP -->

> *A Refined Endpoint List (REL) records intermediate API design results on a medium level of abstraction/refinement and detail.*

<!-- STX4ZIO: I wasn't happy with the current synopsis (too similar to CEL, and the "list" is already in the title (not the table though)) so I tried to come up with a new one:

> *A Refined Endpoint List (REL) represents an intermediate API design showing endpoints and their responsibilities and data contracts.*

ZIO4STX: Thx, edited original one further. I do like yours too. Make sure table format is mentioned later. TODO decide or merge
-->

### Motivation (Addressed Information Need) 

A REL answers the following questions:

* How can high-level specifications for the required API operations be added to the endpoint descriptions (without getting lost in syntactic details or "review wars" caused by technology beliefs)?
* In particular, how can API endpoint and operation responsibilities be found and captured rapidly (without engaging in premature detailed decision making)?


### Usage (Produced and Consumed When)
 
A Refined Endpoint List (REL) is produced in Step 5 in [Stepwise Service Design](../activities/SDPR-StepwiseServiceDesign.md), remote service layer design (the API provides the remote facades).

<!-- * Step 5 of the EXPOSE technique -->

Mike Amundsen's [seven-step Web API design method](https://www.infoq.com/articles/web-api-design-methodology/) includes "Reconcile Magic Strings" as Step 3 and "Select a Media Type" as Step 4 (@Amundsen:2020); REL creation and population roughly corresponds to these two steps. The REL corresponds to the "updated API goal canvas" that Arnaud Lauret proposes in Chapter 2 of "The Design of Web APIs" (@Lauret:2019).


### Template Structure and Notation(s)
Record your design results in list or table form. Start with a list of endpoints with their visibility and direction and link to requirements and domain model, for instance structured as this: 

```markdown
API name:  [name]

Identified in: [user story, domain model element, architecture diagram]
Direction: (Frontend Integration | Backend Integration)
Visibility: (Public API | Community API | Solution-Internal API )

Endpoints in this API (and their architectural role): 

1. Endpoint (EP) 1: [name], [role]
2. EP 2: [name], [role]
3. EP 3: [name], [role]
```

<!-- older proposal:
This is an elaborate proposal, referencing several categories in [Microservice API Patterns (MAP)](https://microservice-api-patterns.org/):
| Integration Type ([Foundation](https://microservice-api-patterns.org/patterns/foundation/) pattern) | Visibility ([Foundation](https://microservice-api-patterns.org/patterns/foundation/) pattern) | API/Endpoint Name | Source (Artifact) | Features/Capabilities ([Responsibility](https://microservice-api-patterns.org/patterns/responsibility/) Analysis) |  
|------------------|------------|------|--------|--------------|
| ... | ... | ... | ... | ... |
-->

For each API endpoint in such list, specify its responsibilities and signature on a platform- and technology-neutral, yet concrete level of detail:

```markdown
| EP | Op. | Responsibility | Request and Response Message | Media Type |
|----|-----|----------------|------------------------------|------------|
| [name] | | [endpoint role] | | |                    
|  | [name] | [operation responsibility] | [abstract data contract] | [custom, IANA] |
| ... | |  | | |                    
|  | ... | | | |
```

<!-- Step 5 of activity has more here: service layer, remote facade, DTO ADs; feature in tutorial (not needed here) -->

**Design elaboration**. Make the following decisions and record them as described in the activity [Architectural Decision Capturing](DPR-ArchitecturalDecisionCapturing.md):

* Communication protocol (HTTP? gRPC? GraphQL?) including REST maturity level when using HTTP (from 0 to 3, HATEOAS) 
* Message exchange format, for instance MIME type when using RESTful HTTP (refining a platform-neutral DTO design in UML or MDSL): JSON? XML? Other message exchange format?
* Media/content type profile: [Application-Level Semantic Profiles (ALPS)](https://tools.ietf.org/html/draft-amundsen-richardson-foster-alps-03)? [JSON-LD](https://json-ld.org/) + Hydra? [Microformats](http://microformats.org/)?
* Security design (CIA) decisions (details out of scope here)

Decide with an API-wide scope or decide separately per endpoint/per operation if the [Non-Functional Requirements](DPR-SMART-NFR-Elicitation.md) require such differentiation. Update your [Architecture Modeling](DPR-ArchitectureModeling.md) artifacts from previous steps accordingly.

### Example(s)

This example of a REL continues and details the example given in the [Candidate Endpoint List (CEL)](SDPR-CandidateEndpointList.md) artifact:

| Endpoint | Operation (HTTP verb) | Responsibility Pattern (MAP) | Published Language (Request and Response Message Payload) | Media Type/Profile |
|----------|-------------|------------------------------|---------------------------------------|-------|
| Customer |             | [*Master Data Holder*](https://microservice-api-patterns.org/patterns/responsibility/informationHolderEndpointTypes/MasterDataHolder)         |              | Microformats or ALPS (tbd) |
|          |  Find (GET) |  [*Retrieval Operation*](https://microservice-api-patterns.org/patterns/responsibility/operationResponsibilities/RetrievalOperation) | *in:* QueryString (tbd), *out:* CustomerDTOSet | |
|          |  Read (GET) | [*Retrieval Operation*](https://microservice-api-patterns.org/patterns/responsibility/operationResponsibilities/RetrievalOperation) | *in:* `CustomerId":ID<int>`, *out:* `CustomerDTO` <!-- MDSL snippets --> |  |
|          |  Update (PUT) | [*State Creation Operation*](https://microservice-api-patterns.org/patterns/responsibility/operationResponsibilities/StateCreationOperation)  | *in:* `{"CustomerId", "newPhoneNumber", "newAddress"}`, *out:* `{"statusInformation", "linkToUpdatedCustomerResource}` <!-- MDSL snippets --> | |

<!-- TODO (v2) SSD step 5 has more, for instance provider/backend mapping -->

Note that one could use a structure that deviates from the template. This is ok according to our second rule of method adoption: "do not follow templates blindly, but adopt them to your needs".

<!-- TODO Decision making examples missing here, see activity and tutorial 1 (?) -->

### Tools

A few examples of tools include:

* The Freemarker generator in the [MDSL tools](https://microservice-api-patterns.github.io/MDSL-Specification/tools) can generate Markdown reports formatted according to the above suggestions for RELs.
* SwaggerHub and its competitors support OpenAPI; SoapUI supports both WSDL/XML schema and RESTful HTTP. A REL provides the input to technology-specific API design and implementation within such tools.
* [JHipster](https://www.jhipster.tech/doing-api-first-development/) can be used to quickly turn OpenAPI specifications into Spring Boot applications.

<!-- TODO cover JSON-API (see MAP and survey) -->

### Hints and Pitfalls to Avoid

* Do not mechanically turn all application domain (micro-)layer artifacts such as Domain-Driven Design (DDD) pattern instances or facades into (micro-)services, but follow a recognized or homegrown identification method. For instance, the DDD *Bounded Context* is seen to form an upper boundary for microservice size, while *Aggregates* serve as lower boundary. <!-- TODO ICSA 2021 paper, EP21 paper -->
* Reuse already modeled data representation elements if possible (for instance, consider microformats or schema.org).
* Prioritize the non-functional requirements as many of them conflict with each other. Define a [Service Level Agreement](SDPR-ServiceLevelAgreement.md) with at least one service level objective per operation (or endpoint). 
* Specify at least one API test case per [User Story](DPR-UserStory.md) and API operation. Evaluate whether your API design and implementation can benefit from [Test-Driven Development (TDD)](https://www.agilealliance.org/glossary/tdd/) and [Behavior-Driven Development (BDD)](https://dannorth.net/introducing-bdd/) and supporting tools such as [Cucumber](https://cucumber.io/). 

<!-- From JUG 2019 slide (is there a newer version?) -->

The book "Implementing Domain-Driven Design" by Vaughn Vernon (@Vernon:2013) provides the following more platform- and technology-specific advice (enhanced with insights from blog posts and presentations):

* Avoid 1:1 pass-through between layers (in particular, interface layer and application/domain layer). <!-- note that https://www.ibm.com/garage/method/practices/code/domain-driven-design seems to contradict this hint at least to some extent -->
* When Bounded Contexts are realized by API providers, one service API and IDE project for each team/system Bounded Context (a.k.a. microservice) should be foreseen.
* Aggregates supply API resources (or responsibilities) of service endpoints.
* DDD (application) services may be exposed as top-level (home) resources in Bounded Context endpoints as well.
* The Root Entity (also known as Aggregate Root), the Repository, and the Factory in an Aggregate suggest top-level resources; contained entities yield sub-resources. The [MDSL generator in Context Mapper](https://contextmapper.org/docs/mdsl/) implements this mapping.
* Repository lookups become paginated queries (GET with search parameters).

Additional rules of thumb regarding the transition from DDD (@Evans:2003) to API design (drawn from our experience and additional sources) are:

* Master data and transactional data go to different Bounded Contexts/Aggregates and, in turn, endpoints.
* Creation requests to Factories become POSTs.
* Entity modifiers become PUTs or PATCHes.
* Value Objects appear in the custom MIME types representing resources.

<!-- See this [end-to-end service design demo](https://ozimmer.ch/practices/2020/06/10/ICWEKeynoteAndDemo.html) for some technical contracts and examples. -->

The [Cloud Adoption Patterns]( https://kgb1001001.github.io/cloudadoptionpatterns/Cloud-Native-Architecture/Microservice-Design.html) website has additional advice to give. 


### Origins and Signs of Use
The CEL and REL artifacts in DPR originate from the MAP project, mining experiences in the community. <!-- So unlike all other artifact templates, REL is an novel proposal in DPR. -->

Usage of the above list and table formats is a sign of use.


### Related Artifacts and Practices (incl. Alternatives)

* [Candidate Endpoint List](SDPR-CandidateEndpointList.md) 
* [API Description](SDPR-APIDescription.md)
* [Service Level Agreement](SDPR-ServiceLevelAgreement.md)


### More Information

* [Service Layer](https://martinfowler.com/eaaCatalog/serviceLayer.html) and related patterns (@Fowler:2002)
* Books on Web API design and RESTful HTTP (@Allamaraju:2010, @Lauret:2019) as well as related blog posts such as [those by James Higginbotham](https://tyk.io/author/james-higginbotham/)
* gRPC guidelines, for instance this [style guide](https://developers.google.com/protocol-buffers/docs/style)
* GraphQL [learning resources](https://graphql.org/learn/) 
* WSDL/SOAP tips and tricks (@Zimmermann:2003)


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Refined Endpoint List (REL)"
author: Olaf Zimmermann (ZIO)
date: "04, 08, 2021"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

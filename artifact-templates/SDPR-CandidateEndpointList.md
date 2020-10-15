---
Scope: Service Layer of Backend
Phases: Late analysis, early design (any iteration)
Roles: Service Designer, Integration Architect 
Activities: Stepwise/Incremental Service Design (Contract First), Step 4
Abstraction/Refinement Level: technology-agnostic, platform-independent
---


Artifact/Template: Candidate Endpoint List (CEL)
------------------------------------------------
also known as: Preliminary Endpoint List, Draft API Plan, Initial API Roadmap, Resource Candidates <!-- from MAP -->

### Motivation (Addressed Information Need) 
<!-- copy-pasted from https://internal.microservice-api-patterns.org/patterns/identification/CandidateEndpointList.html TOOO decide pattern/method split, pattern has more content already -->

Let us articulate the need for this artifact in question form: 

*How can an initial, draft set of API capabilities (i.e., responsibilities, collaborations) be compiled and structured as these capabilities are identified in new requirements, design artifacts and descriptions of existing systems (for instance, domain-driven designs, user interface mockups, integration stories)?*


### Usage (Produced and Consumed When)

Step 4 in the [stepwise API/service design activity](../activities/SDPR-StepwiseServiceDesign.md) in DPR concerns service layer design; the API provides remote facades and data transfer objects (@Fowler:2002). The still technology- and platform-independent output of this step is the Candidate Endpoint List (CEL).

<!-- * Step 3 of the EXPOSE technique -->

Mike Amundsen's [seven-step Web API design method](https://www.infoq.com/articles/web-api-design-methodology/) starts with "List all the things"; this activity roughly corresponds to Steps 1 to 3 in DPR. Arnaud Lauret proposes an "API goal canvas" in Chapter 2 of "The Design of Web APIs" (@Lauret:2019): 

> Who wants to do what and how? What are the inputs and outputs? Which goals result? 


### Template Structure and Notation(s)
<!-- 
(rather detailed and does not match example, so moved to REL artifact):

Record your analysis (and design) results in list or table form: 

| Integration Type (Foundation pattern) | Visibility (Foundation pattern)| API/Endpoint Name | Source (Artifact) | Features/Capabilities (Responsibility Analysis) |  
|------------------|------------|------|--------|--------------|
| ... | ... | ... | ... | ... |
-->

A simple table like this will suffice: 

| Endpoint | Operation | Responsibility/Exposed Data | 
|----------|-----------|-----------------------------|
|...|...|...|


### Example(s)
MAP tutorial 2 (which is not yet published on the MAP website yet) provides a customer master-data management example. In the tutorial, the following user story complemented with architectural context information, NFRs, and a simple domain model) provides the primary input to the [API design activities](../activities/SDPR-StepwiseServiceDesign.md):

> "As a customer of Lakeside Mutual, I would like to update my contact information myself online so that I can make sure that the data is entered correctly and I do not have to call an agent, which may involve long waiting times."

The CEL identifying the API design and frontend-backend integration needs derived from this story looks like this (note that HTTP verbs are already called out, which is a little early but ok on candidate level):

| Endpoint | Operation (HTTP verb)  | Responsibility/Exposed Data | 
|----------|-------------|-----------------------------|
| Customer | Find (GET)  | Returns list of identifiers of customers that match some search criteria |
|          | Read (GET)  | Returns details of one particular customer record |
|          | Update (PUT)| Allows client to change all or parts of a customer record (for instance, address and context information) |


### Tools
Any plain text or Markdown editor, wikis, presentation tools and even spreadsheets can be used to create and populate CEL tables, as long as they provide some support for table editing.


### Hints and Pitfalls to Avoid
Taking the output of Step 3 in our seven-step approach (or equivalent output of another business analysis and architecture design method) into account, you may want to follow the following steps when populating the CEL table (and, in the next step, the [Refined Endpoint List (REL)](SDPR-RefinedEndpointList.md)): 
<!-- source: from MAP, unpublished so far -->

1. Add one candidate API per functional partition a.k.a *Subdomain* in DDD (@Evans:2003); note that some DDD literature also talks about *Bounded Contexts* here (@Vernon:2013); optionally, also add one candidate endpoint per *Entity* and *Service* in a subdomain and/or *Aggregate* in a bounded context.
2. Add one candidate API per layer that crosses a physical tier boundary according to the chosen assignment of logical layers to physical tiers, also known as *client-server cuts* (@RenzelKeller:1997). For instance, add one candidate API per client application as explained/motivated in the [*Backends-for-Frontends*](https://samnewman.io/patterns/architectural/bff/) pattern. <!-- removed here: 3. Add one *candidate API client* per backend system to be integrated/required to implement the user/integration stories. -->
3. Refactor (merge, split) to remove redundant API/API endpoint entries and achieve high cohesion (w.r.t. business-/domain-level responsibilities) within endpoints. <!--, but do not refine to API operation/call level yet. -->
<!--
5. Add one *candidate API* per team shown as a *Team Bounded Context (TBC)* in a DDD context map; add one *candidate endpoint* per subteam. -->
<!-- not sure where previous one came from; F-A-S-T? see e2e demo -->

A general hint is not to hesitate to undo and revise as you learn more about the client's information needs and provider capabilities (both on CEL and REL level, as well as throughout all seven steps). 


### Origins and Signs of Use
Any design/documentation artifact in between a planning item/requirement specification (for instance, a user story) and annotated source code providing a RESTful HTTP (or similar) endpoint resource qualifies as a CEL.

The artifact appears in (@Sturgeon:2016) and also is a candidate pattern in MAP.

Chapter 2 of (@Lauret:2019) features an "API Goals Canvas", which is very similar to the CEL/REL artifacts in DPR.


### Related Artifacts and Templates (incl. Alternatives)

* [Use cases](DPR-UseCase.md) or [user stories](DPR-UserStory.md) as well as [user interface mocks](../activities/DPR-UserInterfaceMocking.md) can serve as input to CEL preparation.
* The same holds for the [Domain Model](DPR-DomainModel.md) .
* Architecture overview diagrams and models containing a Service Layer
* The [Refined Endpoint List](SDPR-RefinedEndpointList.md) picks up the CEL en route to implementation.
* [API Description](SDPR-APIDescription.md), capturing platform-independent and -specific service contracts (MDSL, OpenAPI Specification, AsyncAPI)


### More Information

* Phil Sturgeon's @Sturgeon:2016 features a simple table format for CELs. 
* Mike Amundsen's [seven-step Web API design method](https://www.infoq.com/articles/web-api-design-methodology/) uses finite state machines as an intermediate artifact. 
* Martin Fowler's "Patterns of Application Architecture" introduces the patterns Service Layer, Remote Facade, Data Transfer Object.


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Candidate Endpoint List"
author: Olaf Zimmermann (ZIO)
date: "08, 14, 2020 (Source: Project DD-DSE)"
copyright: Olaf Zimmermann, 2020 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```


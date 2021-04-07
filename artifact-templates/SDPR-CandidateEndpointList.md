---
Scope: Remote service layer of backend
Phases: Late analysis, early design (any iteration)
Roles: Service Designer, Integration Architect 
Activities: Stepwise/Incremental Service Design (Contract First), Step 4
Abstraction/Refinement Level: technology-agnostic, platform-independent
---


Artifact/Template: *Candidate Endpoint List (CEL)*
--------------------------------------------------
also known as: Preliminary Endpoint List, Draft API Plan, Initial API Roadmap, Resource Candidates <!-- from MAP -->

> *A Candidate Endpoint List (CEL) records early API design results in list or table form.*

### Motivation (Addressed Information Need) 
<!-- copy-pasted from https://internal.microservice-api-patterns.org/patterns/identification/CandidateEndpointList.html TOOO decide pattern/method split, pattern has more content already -->

Let us articulate the need for this artifact in question form: 

How can an initial, draft set of API capabilities (i.e., responsibilities, collaborations) be compiled as these capabilities are identified in new requirements, design artifacts and descriptions of existing systems (for instance, domain-driven designs, user interface mockups, integration stories)?


### Usage (Produced and Consumed When)

Step 4 in the [Stepwise Service Design](../activities/SDPR-StepwiseServiceDesign.md) activity in DPR concerns remote service layer design; the API exposed by a service provides remote facades  (@Fowler:2002). The still technology- and platform-independent output of this step is the Candidate Endpoint List (CEL); an endpoint candidate may be a remote facade.

<!-- * Step 3 of the EXPOSE technique -->

Mike Amundsen's [seven-step Web API design method](https://www.infoq.com/articles/web-api-design-methodology/) starts with "List all the things"; this activity roughly corresponds to Steps 1 to 3 in DPR. Arnaud Lauret proposes an "API goal canvas" in Chapter 2 of "The Design of Web APIs" (@Lauret:2019): 

Who wants to do what and how? What are the inputs and outputs? Which goals result? 


### Template Structure and Notation(s)
<!-- 
(rather detailed and does not match example, so moved to REL artifact):

Record your analysis (and design) results in list or table form: 

| Integration Type (Foundation pattern) | Visibility (Foundation pattern)| API/Endpoint Name | Source (Artifact) | Features/Capabilities (Responsibility Analysis) |  
|------------------|------------|------|--------|--------------|
| ... | ... | ... | ... | ... |
-->

A simple table will suffice: 

```markdown
| Endpoint | Operation | Role/Exposed Data | 
|----------|-----------|-------------------|
|...       |...        |...                |
```

### Example(s)
[Microservice API Patterns Tutorial 2](https://microservice-api-patterns.org/patterns/tutorials/tutorial2) provides a customer master-data management example. In the tutorial, the following user story (complemented with architectural context information, NFRs, and a simple domain model) provides the primary input to the [API design activities](../activities/SDPR-StepwiseServiceDesign.md):

> "As a customer of Lakeside Mutual, I want to update my contact information myself online so that I can make sure that the data is entered correctly and I do not have to call an agent, which may involve long waiting times."

A CEL identifying the API design and frontend-backend integration needs derived from this story looks like this (note that HTTP verbs are already called out, which might be a little early):

| Endpoint | Operation (HTTP verb) | Role/Exposed Data | 
|----------|-------------|-----------------------------|
| Customer | Find (GET)  | Returns list of identifiers of customers that match some search criteria |
|          | Read (GET)  | Returns details of one particular customer record |
|          | Update (PUT)| Allows client to change all or parts of a customer record (for instance, address and context information) |


### Tools
Any plain text or Markdown editor, wikis, presentation tools and even spreadsheets can be used to create and populate CEL tables, as long as they provide some support for table editing.


### Hints and Pitfalls to Avoid
Taking the output of Step 3 in the [Stepwise Service Design](../activities/SDPR-StepwiseServiceDesign.md) activity (or equivalent output of any business analysis and architecture design method) into account, you may want to follow the following steps when populating the CEL table (and, in the next step, the [Refined Endpoint List (REL)](SDPR-RefinedEndpointList.md)): 
<!-- source: from MAP, unpublished so far -->

1. Add one candidate API per functional partition, for instance expressed as DDD Subdomain (@Evans:2003) or Bounded Context (@Vernon:2013); optionally, also add one candidate endpoint per Entity and Service in a Subdomain and/or Aggregate in a Bounded Context.
2. Add one candidate API per layer that crosses a physical tier boundary according to the chosen assignment of logical layers to physical tiers, also known as *client-server cuts* (@RenzelKeller:1997). For instance, add one candidate API per client application as explained/motivated in the [*Backends-for-Frontends*](https://samnewman.io/patterns/architectural/bff/) pattern. <!-- removed here: 3. Add one *candidate API client* per backend system to be integrated/required to implement the user/integration stories. -->
3. Refactor (merge, split) to remove redundant candidate endpoint entries and achieve high cohesion (w.r.t. business-/domain-level responsibilities) within endpoints. 

<!-- but do not refine to API operation/call level yet. -->
<!-- 4./5. Add one *candidate API* per team shown as a *Team Bounded Context (TBC)* in a DDD context map; add one *candidate endpoint* per subteam. -->
<!-- not sure where previous one came from; F-A-S-T? see e2e demo -->

A general hint is not to hesitate to undo and revise as you learn more about the client's information needs and provider capabilities (both on CEL and REL level). 


### Origins and Signs of Use
Any design/documentation artifact in between a planning item/requirement specification (for instance, a user story) and annotated source code providing a RESTful HTTP (or similar) endpoint resource qualifies as a CEL.

The CEL and REL artifacts in DPR originate from the MAP project, mining experiences in the community. Similar artifacts appear in "Build APIs You Won’t Hate" (@Sturgeon:2016) and "Design and Build Great Web APIs" (@Amundsen:2020). Chapter 2 of "The Design of Web APIs" (@Lauret:2019) features an "API Goals Canvas", which also is very similar to the CEL/REL artifacts in DPR.


### Related Artifacts and Practices (incl. Alternatives)

* [Use Cases](DPR-UseCase.md) or [User Stories](DPR-UserStory.md) as well as [User Interface Mocks](../activities/DPR-UserInterfaceMocking.md) can serve as input to CEL preparation.
* The same holds for the [Domain Model](DPR-DomainModel.md).
* Architecture overview diagrams and models containing a (Remote) Service Layer
* The [Refined Endpoint List](SDPR-RefinedEndpointList.md) picks up the CEL en route to implementation.
* [API Description](SDPR-APIDescription.md), capturing platform-independent and -specific service contracts (MDSL, OpenAPI Specification, AsyncAPI)


### More Information

* Phil Sturgeon's ["Build APIs You Won't Hate"](https://apisyouwonthate.com/books) (@Sturgeon:2016) features a simple but effective resource identification technique and a simple table format for CELs.
* Mike Amundsen's [seven-step Web API design method](https://www.infoq.com/articles/web-api-design-methodology/) uses finite state machines as an intermediate artifact (@Amundsen:2020). 
* James Higginbotham has posted API design advice on the [Tyk blog](https://tyk.io/author/james-higginbotham/), for instance he advises ["Before you design your API, model your API"](https://tyk.io/before-you-design-your-api-model-your-api/) in five steps. The API model produced in the fourth step corresponds to the CEL here in DPR.


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Candidate Endpoint List"
author: Olaf Zimmermann (ZIO)
date: "03, 31, 2021"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```


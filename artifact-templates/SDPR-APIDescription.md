---
Scope: Entire API, individual API endpoints and their operations
Phases: Early integration testing, API publication/release 
Roles: API Owner, Architect, Developer
Activities: Stepwise Service Design (Contract First), Steps 6 and 7; Code First
Abstraction/Refinement Level: Platform-independent, platform-specific
---


Artifact/Template: *API Description*
------------------------------------
also known as: Service Contract 

### Motivation (Addressed Information Need) 
Quoting the context section of the [API Description pattern](https://microservice-api-patterns.org/patterns/foundation/APIDescription) on MAP website, let's assume that "a service provider has decided to expose one or more API operations in an API endpoint; the number, name, and synopsis of these API calls have not been specified yet. Therefore, developers of clients (i.e., Web and mobile app developers implementing Frontend Integrations or the system integrators writing adapters for Backend Integrations) are not yet able to code service invocations and do not know what to expect in responses. Furthermore, supplemental interface descriptions are missing as well, including informal explanations of the meaning of the API calls (e.g., parameters in message representations, effects on application state in the API implementation) and related qualities (e.g., idempotency, transactionality)."

"Which knowledge should be shared between an API provider and its clients? How should this knowledge be documented?

* How can API client and API provider make their agreement on the functional aspects of service invocation (e.g., data transfer representations and invocation prerequisites) explicit?
* How can this functional information be amended with other technical specification elements (e.g., protocol headers, security policies, fault records) and business-level documentation (e.g., call semantics, API owner, billing information, support procedures, versioning)?"

Desired qualities are understandability, interoperability and extensibility (preserving backward compatibility as much as possible).


### Usage (Produced and Consumed When)
Explicit, both human- and machine readable API descriptions (or service contracts) are typically created during design elaboration and transition activities. In the [seven-step service design activity](../activities/SDPR-StepwiseServiceDesign.md) in DPR, they are created in Step 6 (and then evolved in Step 7).

Mike Amundsen's [seven-step Web API design method](https://www.infoq.com/articles/web-api-design-methodology/) features "Create a Semantic Profile" as step 5. Service description and profile formats are created in this step, hence it produces an API Description in DPR and MAP terms.


### Template Structure and Notation(s)
The [API Description](https://microservice-api-patterns.org/patterns/foundation/APIDescription) on MAP website advises to define "request and response message structures, error reporting, and other relevant parts of the technical knowledge to be shared between provider and client. In addition to static and structural information, also cover dynamic or behavioral aspects including invocation sequences, pre- and postconditions, and invariants. Complement the syntactical interface description with quality management policies as well as semantic specifications and organizational information."

![](./images/ElaborateAPIDescription.png)


### Example(s)
A minimal technical API description is (notation: [MDSL](https://microservice-api-patterns.github.io/MDSL-Specification/)):

~~~
API description HelloWorldAPI

data type SampleDTO {ID, D} 

endpoint type HelloWorldEndpoint
exposes 
  operation sayHello 
    expecting payload D<string>  
    delivering payload SampleDTO

API provider HelloWorldAPIProvider
  offers HelloWorldEndpoint

API client HelloWorldAPIClient
  consumes HelloWorldEndpoint
~~~

The [Microservices Canvas](http://chrisrichardson.net/post/microservices/general/2019/02/27/microservice-canvas.html) template proposed by C. Richardson creates elaborate API Descriptions when filled out completely. The template includes implementation information, service invocation relationships, and events produced/subscribed to.

See this [end-to-end service design demo](https://ozimmer.ch/practices/2020/06/10/ICWEKeynoteAndDemo.html) for technical, platform-specific contracts generated from the platform-independent MDSL.


### Tools

* [MDSL](https://microservice-api-patterns.github.io/MDSL-Specification/), a service contract language with supporting tools such as an API Linter, Open API and Protocol Buffer generators 
* Swagger tools such as [Swagger Hub](https://swagger.io/tools/swaggerhub/) and the online [Swagger/Open API editor](https://editor.swagger.io/) 
* Annotation processors and equivalent programming language-level tools, often included in Web development frameworks and application servers; JAX-RS, Spring MVC and Spring Fox are examples.


### Hints and Pitfalls to Avoid

From the EuroPLoP 2019 paper "Interface Evolution Patterns — Balancing Compatibility and Extensibility across Service Life Cycles" by Daniel Lübke, Olaf Zimmermann, Cesare Pautasso, Uwe Zdun, Mirko Stocker  ([PDF](http://eprints.cs.univie.ac.at/6082/1/WADE-EuroPlop2019Paper.pdf)):

* "Define an *API product owner* that steers and leads the [architectural decision making](https://en.wikipedia.org/wiki/Architectural_decision) for API design and its implementation and decides on the service evolution strategy including versioning. A related pattern is [Open Service Ownership](http://samnewman.io/patterns/organizational/open-service-ownership/) by S. Newman.
* Define the upstream and downstream contract relationship e.g. in the form of one of the relationship types in DDD-style *Context Maps*, for instance open host service and customer-supplier, first described in @Evans:2003, later picked up by the microservices community, and supported in tools such as [Context Mapper](https://contextmapper.org/).
* Consider to specify [Finite State Machines](https://en.wikipedia.org/wiki/Finite-state_machine) (FSMs) if the API causes non-trivial, possibly long-running state changes. Design the system transaction boundaries carefully; discuss and challenge whether strict or eventual consistency is needed if multiple system parts and clients work with the data that is exposed in the API (e.g., master data, transactional data)."


### Origins and Signs of Use
[Interface Description/Definition Languages](https://en.wikipedia.org/wiki/Interface_description_language) (IDLs) have been around for a long time; the CORBA IDL is a prominent predecessor of Open API (and WSDL).

Usage of Open API specifications or other platform- and technology-specific IDLs is easy to detect (but less common than one would expect, given the importance of interoperability and understandability of API implementations and their clients). The same holds for MDSL; informal descriptions are harder to spot as they may vary a lot.


### Related Artifacts and Templates (incl. Alternatives)

* [Domain Model](DPR-DomainModel.md), [Candidate Endpoint List](SDPR-CandidateEndpointList.md) (input)
* [Refined Endpoint List](SDPR-RefinedEndpointList.md)
* [Service Level Agreement](SDPR-ServiceLevelAgreement.md) (SLA)


### More Information

* The [Known Uses](https://microservice-api-patterns.org/patterns/foundation/APIDescription#sec:APIDescription:KnownUses) section of the API description pattern lists many notations and tools. 
* [APIs.guru](APIs.guru) aims at creating "the most comprehensive, standards-compliant and up-to-date directory of machine-readable API definitions" [here](https://github.com/APIs-guru/openapi-directory).
* The [Programmable Web](https://www.programmableweb.com/) also lists countless APIs and contract information (not all of which seem to be up to date).


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): API Description"
author: Olaf Zimmermann (ZIO), woth contributions from other MAP authors
date: "08, 14, 2020 (Source: Project DD-DSE)"
copyright: Olaf Zimmermann, 2020 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

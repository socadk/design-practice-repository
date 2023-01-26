---
Scope: TODO
Phases: TODO
Roles: TODO
Activities: TODO  
Abstraction/Refinement Level: TODO 
---

<!-- Word budget: 500-1000 (2-3 A4 pages); the artifacts descriptions should be readable in a few minutes (while practice descriptions will be a bit more elaborate) -->


Artifact/Template: *API Refactoring Catalog*
--------------------------------------------
a.k.a. Interface Refactoring Catalog (IRC)

> *An API refactoring catalog lists and organizes the available API refactorings of/in a particular community.*

### Motivation (Addressed Information Need) 
<!-- Purpose -->
Quality issues may arise while a API evolves, for instance concerning the developer experience or runtime properties. One can either change the API ad hoc, case by case &mdash; or consult a catalog of existing ones. 


### Usage (Produced and Consumed When)
<!-- AA/AS/AE, must identify the producing role and the target audience -->
Look for [smells](https://interface-refactoring.github.io/refactorings/by-smells-drivers/), select a suited refactoring, and follow the instructions in it.  

Alteratively, browse the catalog by [stakeholder concerns](https://interface-refactoring.github.io/refactorings/by-stakeholder-concerns/).


### Template Structure and Notation(s)
<!-- What to do, artifact to produce; minimum, medium maximum diligence/verbosity (?) -->  

Each refactoring should be documented in the same form. This is the template used in the IRC project: 

* Context and Motivation
* Stakeholder Concerns (including Quality Attributes and Design Forces)
* Initial Position Sketch
* Smells / Drivers
* Instructions (Steps)
* Target Solution Sketch (Evolution Outline)
* Example(s)
* Hints and Pitfalls to Avoid
* Related Content

<!-- ![](/images/NN.png) -->

The template can be found in the [IRC repository](https://github.com/Interface-Refactoring/Interface-Refactoring-Catalog/blob/main/contributing/RefactoringTemplate.md).


### Example(s)
<!-- Must be concrete, ideally give three ones, one for each verbosity/fidelity level basic, medium, full -->
[*Add Wish List*](https://interface-refactoring.github.io/refactorings/addwishlist) applies one of the Microservice API Patterns for response shaping. 

The [Lakeside Mutual sample application](https://github.com/Microservice-API-Patterns/LakesideMutual) implements the pattern:

~~~
	private CustomerResponseDto createCustomerResponseDto(CustomerAggregateRoot customer, String fields) {
		final Set<String> includedFields = getIncludedFields(fields);
		CustomerResponseDto customerResponseDto = new CustomerResponseDto(includedFields, customer);
        [...]
		customerResponseDto.add(selfLink);
		customerResponseDto.add(updateAddressLink);
		return customerResponseDto;
	}
~~~


### Tools
<!-- From AA, should call out what one needs to be able to do on beginner, intermediate, advanced level; as a team -->

The [MDSL Tools](https://microservice-api-patterns.github.io/MDSL-Specification/soad.html) implement many of the IRC refactorings.


### Hints and Pitfalls to Avoid (Common Pitfalls)
<!-- See ART, don’t overdo etc. -->

See the TELL rule and other tips and tricks [here](https://interface-refactoring.github.io/refactorings/hints/).


### Origins and Signs of Use
<!-- From PLOPs and from AA -->
This template is original research by Mirko Stocker and Olaf Zimmerman 2020 to 2021 supported by the Hasler Foundation. This work has roots in code refactoring and earlier work on architectural refactoring for the cloud).


### Related Artifacts and Practices (incl. Alternatives)
<!-- in DPR/OLAF and elsewhere -->

* API Description
* Stepwise Service Design
* SMART NFR Elicitation


### More Information

See the ["Basic Concepts and Sample Application"](https://interface-refactoring.github.io/glossary/) on the IRC website.

James Higginbotham describes how to review API designs in a [post in the Tyk blog](https://tyk.io/how-to-conduct-an-api-design-review/). 


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): API Refactoring Catalog"
author: Mirko Stocker (STX), Olaf Zimmermann (ZIO)
date: "09, 09, 2023 (Source: Project QDAR)"
copyright: Mirko Stocker and Olaf Zimmermann, 2021-2022 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

<!--
# References
[C-99]: # (Comment: References will be added here automatically when using -bibliography option of pandoc command)
-->
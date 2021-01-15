---
Scope: From entire system to individual features
Phases: Analysis, Requirements Engineering
Roles: Entire Agile Team; Business Analysts, Domain Experts; Application Architects
Activities: Iteration Planning, Development, Test; Story Mapping, Story Splitting 
Abstraction/Refinement Level: Multiple (invitation for conversation)
---


Artifact/Template: *User Stories*
---------------------------------
also known as: Feature, Backlog Item

### Motivation (Addressed Information Need) 
The Agile Alliance describes the role and purpose of user stories nicely in its [glossary entry for them](https://www.agilealliance.org/glossary/user-stories/): 

* Divide feature into units that fit into a single iteration
* [INVEST](https://www.agilealliance.org/glossary/invest) in actionable insights on user wants and needs

User stories also are excellent input to API design and system decomposition. 


### Usage (Produced and Consumed When)
User stories are used in sprint planning, sprint reviews, etc. They are one way of eliciting and communicating about functional requirements. See entry on Agile Alliance glossary referenced under 'Motivation':

* Sprint planning
* Minimum Viable Product (MVP) development
* Later iterations


### Template Structure
The Connextra format ("role-feature-benefit/reason") is a popular one: 

> As a `[role/persona]`, I want to `[feature, in verb form]` so that `[benefit]`.

See the [glossary entry](https://www.agilealliance.org/glossary/user-story-template/).


### Example(s)
The [Context Mapper](https://contextmapper.org/) and [MDSL](https://microservice-api-patterns.github.io/MDSL-Specification/) demo described in [ZIO's blog](https://ozimmer.ch/practices/2020/06/10/ICWEKeynoteAndDemo.html) starts with this story that employs the role-feature-benefit template:

~~~
As a Researcher 
I want to create a PaperItem with its "title", "authors", "venue" in a "PaperCollection"
so that other researchers can find and cite the referenced paper easily, and my h-index goes up.
~~~


### Tools
User stories typically are created and updated transiently in issue tracking systems. They can also go to wiki pages, specification and documentation documents. 

The [Context Mapper](https://contextmapper.org/) DSL has first class support for an extended user story format. 


### Hints and Pitfalls to Avoid

* Do not create models or specifications as an excuse for and user interactions and conversations.  
* Continuously update the stories while learning about users and their requirements.
* [INVEST](https://www.agilealliance.org/glossary/invest) in story quality.
* Practice [Story Splitting](../activities/DPR-StorySplitting.md) to make stories fit into single sprints/iterations (and to identify candidate components for [architecture modeling](../activities/DPR-ArchitectureModeling.md), including [candidate endpoints](SDPR-CandidateEndpointList.md)).
* Also consider story mapping and example mapping.


### Origins and Signs of Use
The role-feature-benefit template usage is rather easy to spot. 

Presence or mention of three Cs [Card, Conversation, Confirmation](https://www.agilealliance.org/glossary/three-cs) can also indicate use.


### Related Artifacts and Practices (incl. Alternatives)

* [Use Cases](DPR-UseCase.md)
* [Story Splitting](../activities/DPR-StorySplitting.md)
* [Job Stories](https://jtbd.info/replacing-the-user-story-with-the-job-story-af7cdee10c27)
* Test-Driven Development (TDD) 
* Behavior-Driven Development (BDD) and [given-when-then](https://www.agilealliance.org/glossary/gwt) template for acceptance criteria.


### More Information
Mike Cohn's book "User Stories Applied" is a seminal reference (@Cohn:2004). 


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): User Stories"
author: Olaf Zimmermann (ZIO)
date: "12, 07, 2020 (Source: Project DD-DSE)"
copyright: Olaf Zimmermann, 2020 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

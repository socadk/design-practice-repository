---
Scope: From entire system to individual features
Phases: Analysis, requirements engineering
Roles: Agile team; business analysts, domain experts; application architects
Activities: Iteration planning, development, test; story mapping, story splitting 
Abstraction/Refinement Level: Multiple (invitation for conversation)
---


Artifact/Template: *User Stories*
---------------------------------
also known as: Feature, Backlog Item

> *A user story is an invitation to a conversation about a particular system feature, and may also capture the results of such conversation.*

### Motivation (Addressed Information Need) 
The Agile Alliance describes the role and purpose of user stories in its [glossary entry for them](https://www.agilealliance.org/glossary/user-stories/) as "divide feature into units that fit into a single iteration" and advises to [INVEST](https://www.agilealliance.org/glossary/invest) in actionable insights on user wants and needs.

### Usage (Produced and Consumed When)
User stories come in and out of [Story Splitting](../activities/DPR-StorySplitting.md). Stories also are excellent input to API design and system decomposition. 

User stories are used in sprint planning sprint reviews, both when developing a Minimum Viable Product (MVP) and in later iterations. They are one way of communicating about and eliciting functional requirements (or features).


### Template Structure
A popular format "role-feature-benefit" (or who-what-why) comes from Connextra: 

> As a `[role/persona]`, I want to `[feature, in verb form]` so that `[benefit]`.

See the [glossary entry](https://www.agilealliance.org/glossary/user-story-template/) at the Agile Alliance for more information about the template (and user stories in general).


### Example(s)
The [Context Mapper](https://contextmapper.org/) and [MDSL](https://microservice-api-patterns.github.io/MDSL-Specification/) demo described in [ZIO's blog](https://ozimmer.ch/practices/2020/06/10/ICWEKeynoteAndDemo.html) starts with this story that employs the role-feature-benefit template:

```story
As a Researcher 
I want to create a PaperItem 
  with its "title", "authors", "venue" 
  in a "PaperCollection"
so that other researchers can find and cite the referenced paper easily, 
  and my h-index goes up.
```


### Tools
User stories typically are created and updated transiently in issue tracking systems. They can also go to wiki pages, specification and documentation documents. 

The [Context Mapper](https://contextmapper.org/) DSL has first class support for a role-feature-benefit user story format. Since Verison 6.12, Context Mapper also supports [story valuation](https://github.com/ethical-se/ese-practices/blob/main/practices/ESE-StoryValuation.md) and other forms of [stakeholder-value modelling](https://ethical-se.github.io/value-driven-analysis-and-design/practices/).


### Hints and Pitfalls to Avoid

* Do not create models or specifications as an excuse for interactions and conversations with end users of the software under construction. When creating libraries, frameworks, or APIs, the client developers are your users. 
* Do not confuse benefit with outcome in the third part of the role-feature-benefit template. The [glossary entry at the Agile Alliance](https://www.agilealliance.org/glossary/user-story-template/) clearly states: "So that (why they want to accomplish that thing)". The benefit should outline (business) impact and not formally specify a postcondition or computation result (other practices and templates such as [given-when-then](https://www.agilealliance.org/glossary/given-when-then/) can be used for that). 
* Continuously update the stories while learning about users and their requirements.
* [INVEST](https://www.agilealliance.org/glossary/invest) in story quality.
* Practice [Story Splitting](../activities/DPR-StorySplitting.md) to make stories fit into single sprints/iterations (and to identify candidate components for [architecture modeling](../activities/DPR-ArchitectureModeling.md), including potential [API endpoints](SDPR-CandidateEndpointList.md)). Also consider story mapping and example mapping.


### Origins and Signs of Use
The role-feature-benefit template usage is rather easy to spot; whether or note INVEST is achieved requires a little more effort.

The presence of one or more of the "three Cs" [Card, Conversation, Confirmation](https://www.agilealliance.org/glossary/three-cs) can also indicate use.

See [glossary entry](https://www.agilealliance.org/glossary/user-story-template/) at the Agile Alliance for "Origins" information.


### Related Artifacts and Practices (incl. Alternatives)

* [Use Cases](DPR-UseCase.md)
* [Story Splitting](../activities/DPR-StorySplitting.md)
* [Job Stories](https://jtbd.info/replacing-the-user-story-with-the-job-story-af7cdee10c27)
* Test-Driven Development (TDD) 
* Behavior-Driven Development (BDD) and [Given-When-Then](https://www.agilealliance.org/glossary/given-when-then/) template for acceptance criteria.


### More Information
Mike Cohn's book "User Stories Applied" is a seminal reference (@Cohn:2004). 

Many experience reports at Agile conferences deal with user stories; see [this collection](https://www.agilealliance.org/?s=user+story), for instance.

["How to Write High-Quality User Story"](https://medium.com/beyond-agile-leadership/how-to-write-high-quality-user-story-87cbc58c12c6) on Medium covers stories in context comprehensively.

### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): User Stories"
author: Olaf Zimmermann (ZIO)
date: "05, 02, 2024"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

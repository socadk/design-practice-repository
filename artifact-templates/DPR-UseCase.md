---
Scope: Entire system, subsystems, components
Phases: Analysis, requirements engineering
Roles: Business analysts, domain experts, application architects
Activities: Use Case Modeling
Abstraction/Refinement Level: Multiple, from abstract/early to refined/concrete
---


Artifact/Template: *Use Case (Model)*
-------------------------------------

<!--
> *Synopsis: TODO*
-->

### Motivation (Addressed Information Need) 
Scott Ambler states that "[a] use case is a sequence of actions that provide a measurable value to an actor. Another way to look at it is a use case describes a way in which a real-world actor interacts with the system." in his book and website on [Agile Modeling](http://agilemodeling.com/artifacts/systemUseCase.htm).

So use cases and use case models help determine the system boundary, which in turn impacts project scope and effort; they also help to understand user wants and needs (which are not always identical, by the way). 


### Usage (Produced and Consumed When)
Use cases are elicited during requirements engineering (analysis) on a project. They can be derived from early [User Stories](DPR-UserStory.md), but also be used alternatively. Both use cases and user stories provide input for [User Interface Mocking](../activities/DPR-UserInterfaceMocking.md) and architecture design work.

### Template Structure
No single standardized template for use cases exist. At a bare minimum, a use case comprises:

* A *name* that captures the essence of the actor-system interaction sequence (and their purpose/value).
* An *identifier* to be able to refer to use cases elsewhere, for instance in design specifications.
* A sequence of *interactions* between a user of the system and the system, either paraphrased in free text (called "brief" or "casual" use cases) or enumerated explicitly.

More elaborate templates also include:

* *Actors* that are involved in the use case. These also include the system and other stakeholders. The user from whose perspective the use case is described and initiated is the *primary actor*; external players (people or systems) that the system has to consult/contact/call are called *secondary actors*. 
* *Preconditions* that need to hold for the use case to be executable.
* *Postconditions* to indicate changes in the system after the use case was executed.
* *Alternatives* in the flow of interactions, e.g. to handle errors or special cases. 

Most templates are variations of the fully-dressed template described in @Cockburn:2001 (also available on [Wikipedia](https://en.wikipedia.org/wiki/Use_case#Fully_dressed)). One example of a brief notation is shown in the [Context Mapper DSL](https://contextmapper.org/docs/user-requirements/).

Here is an example template:

```markdown
# UC 1: Name

Pre: ___

1. The user ___
2. The system ___
...

Post: ___
```

The sum of all use cases forms the *use case model* <!-- TODO STX: Find a reference, IIRC the term originates from RUP. --> and can be accompanied by a UML [*Use Case Diagram*](https://www.visual-paradigm.com/guide/uml-unified-modeling-language/what-is-use-case-diagram/) to show the relationships between actors and use cases.

### Example(s)
<!-- Must be concrete, ideally give three ones, one for each verbosity/fidelity level basic, medium, full-->

```markdown
# UC 1: Change Profile Picture

Pre: The social network influencer has created an account and is logged in.

1. The influencer uploads an image from his/her computer.
2. The system verifies that the image satisfies the size constraints.
3. The influencer crops and/or zooms the image.
4. The influencer indicates that they want to use the new image as his/her profile picture.
5. The system saves the image and updates the user profile.

Post: The influencer's profile picture has been changed.
```


### Tools
A project wiki is a good place to store use cases. Apart from that, only a text editor is needed. 

Requirements engineering and UML tools such as DOORS or Enterprise Architect from Sparx (to name just two of many) can be used, but do not have to.


### Hints and Pitfalls to Avoid
To classify use cases, @Cockburn:2001 suggests to specify the *design scope* of a use case, ranging from black-box organization to single component. To indicate the level of detail to readers (and  writers as well), use cases may be annotated with a *goal level*. In the context of API and service design, strive to write on the *user goal* or *subfunction* level.

It is a common convention to name use cases with verbs; strong, possibly domain-specific term such as "buy" or "invoice" should be preferred over generic ones such as "make" or "manage". Actors should also be named specifically; for instance, prefer "online shopper" over "user". See hint 6 in Olaf Zimmermann's [Technical Writing Tips and Tricks](https://ozimmer.ch/authoring/2020/04/24/TechWritingAdvice.html) for rationale and additional examples.

When drawing use case diagrams, some modelers put the primary actor(s) at the top (or the left side) of the figure, the system under construction (that will implement the use cases) in the middle and the secondary actor(s) at the bottom (or the right side).


### Origins and Signs of Use

The history of use cases dates back to Ivar Jacobson in 1986. They are an essential tool in many project management methodologies, see [Wikipedia](https://en.wikipedia.org/wiki/Use_case#History) for a summary.


### Related Artifacts and Practices (incl. Alternatives)

* [User Stories](DPR-UserStory.md) can be seen as a preliminary stage to use cases; however, they are not a direct alternative, and there is no simple one-to-one mapping between them. See explanations in [Agile Alliance glossary](https://www.agilealliance.org/glossary/user-stories).
* [User Interface Mocking](../activities/DPR-UserInterfaceMocking.md) can be used to visualize use cases.
* [SMART NFR elicitation](../activities/DPR-SMART-NFR-Elicitation.md).


### More Information

Larman's @Larman:2004 Chapter on [Use Cases](https://www.craiglarman.com/wiki/index.php?title=Book_Applying_UML_and_Patterns) is available as a free sample.

More information is available in UML books and [dedicated literature](https://en.wikipedia.org/wiki/Use_case#Further_reading).


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Use Case/Use Case Model"
author: Mirko Stocker (STX), Olaf Zimmermann (ZIO)
date: "02, 12, 2021 (Source: Project DD-DSE)"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```

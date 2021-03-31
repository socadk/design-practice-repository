---
Scope: Entire System
Phases: Analysis, requirements engineering, design
Roles: Designer, user experience specialist, developer
Input: User stories, use cases
Output: User interface mockups, wireframes
Abstraction/Refinement Level: Multiple, from abstract/early to refined/concrete
---

Activity/Technique: *User Interface Mocking*
------------------------
also known as: Wireframing


### Context
The need for a new service API may arise from different occasions, including [Frontend Integration](https://microservice-api-patterns.org/patterns/foundation/FrontendIntegration). For example, you are building a new single page Web app or adding new features to a mobile app. If the service client does not exist yet, how do you know what responsibilities your service should have, and what message structure is best suited for the new client?

### Goal and Purpose (When to Use)
<!-- turned purpose into user story (for consistency): -->

> *As a designer and/or developer of user interfaces, user experience specialist, I want to share emerging user interface designs with my stakeholders (for instance, end users and product managers but also backend API providers) to solicit their feedback and involve them in the design closely.* 

The goal of *User Interface Mocking* or *Wireframing* in the context of service and API design is to get a better understanding of the structure, amount, and kind of data a client requires so that the remote interface can be designed accordingly. For example, should a service operation use [Pagination](https://www.microservice-api-patterns.org/patterns/structure/compositeRepresentations/Pagination) to break response messages into chunks, and what kind of [Reference Management](https://www.microservice-api-patterns.org/patterns/quality/#reference-management/) is best suited? 

*When not to use*. Service APIs serve different purposes. Some APIs are tailored to a specific frontend (applying the [Backends-for-Frontend](https://samnewman.io/patterns/architectural/bff/) pattern), while others are built for yet unknown clients (for instance, when your product offering is the API itself). If you are not planning on also creating a client for the service, then creating a mockup of its interface might not be the best approach and you might be better served by [Stepwise Service Design](SDPR-StepwiseServiceDesign.md).

### Instructions (Synopsis, Definition)
The fidelity of user interfaces mockups <!-- note: "mocks" refers to the testing concept of a mock, an imitation, whereas a UI mockup is a simple model. --> varies between hand-drawn sketches to pixel perfect, clickable prototypes. A middle way of a rough gray-scale layout (to make clear that this is just a mockup and should not be taken as a representation of the exact development outcome) that shows the user interface elements and their approximate positions offers a good cost-benefit ratio.

<!-- TODO turn into miro flowchart -->
According to [Balsamiq](https://balsamiq.com/learn/articles/five-steps-to-great-wireframes/), creating a wireframe comprises the following five steps: 

1. *Articulate* the scenario you are addressing. Input for this may come from [User Stories](../artifact-templates/DPR-UserStory) and/or [Use Cases](../artifact-templates/DPR-UseCase).
1. *Generate* a first mockup, and
1. *Iterate* until you have a few variations for each screen.
1. *Communicate* your results to your team and
1. *Validate* that it actually solves the problem you set out to tackle.

The resulting wireframes are not only a potential alternative to [Stepwise Service Design](SDPR-StepwiseServiceDesign.md) from requirements gathering to decomposition, but can also support such activity. For instance, the first mockup can be used to populate the [Candidate Endpoint List](../artifact-templates/SDPR-CandidateEndpointList.md). A regular alignment of wireframes and the API design, expressed in the [Refined Endpoint List](../artifact-templates/SDPR-RefinedEndpointList.md) and the [API Description](../artifact-templates/SDPR-APIDescription.md), can reduce the risk that the API must be reworked for the development of the frontend during API evolution.
 

### Example(s)

The following wireframe shows a rather simple and basic screen for user management. While simple, it still contains valuable information for our service design:

* Users can be created, edited and removed. This hints at the role of our service: it probably is a data-centric [Information Holder](https://www.microservice-api-patterns.org/patterns/responsibility/endpointRoles/InformationHolderResource).
* Users can be copied. This might be relevant for our service, requiring a create operation in the API, but it could also be implemented just on the client side.
* The navigation elements at the bottom of the page suggest that there will be numerous users to be navigated in a [paginated](https://www.microservice-api-patterns.org/patterns/structure/compositeRepresentations/Pagination) fashion. 

![Wireframe Example](/activities/images/Wireframe-Example.png)

### Benefits vs. Effort (Expected Benefits, Skill Levels)
Creating some sort of mockup (whether that is a paper prototype or fully interactive design) is part of most teams' practices anyway; the value of such early validation is commonly agreed upon.

However, it is usually done to improve communication between designers, developers and customers/end-users and not for service API design as outlined above. Hence, the extra effort is rather low. 


### Hints and Pitfalls to Avoid

* Take care not to lose yourself in details, so do not use a graphics program that lets you create a pixel-perfect design, but keep it rough, just like in the example above. This saves time and allows you to focus on the task at hand: figuring out the coarse-grained layout and content of your screens. As an additional benefit, this also clearly communicates to the other stakeholders that you are still far from a working application.
* Try to find API design patterns in the mockups, as outlined above.
* Do not hesitate to refactor when necessary.

### Origins and Signs of Use
Similar techniques have been around for a long time, arguably since the very beginning of software design.

Mockups should be easy to spot if the above advice to keep it rough is followed; those created with tools might be hard to distinguish from actual, fully implemented user interfaces and raise unjustified "done" impressions and expectations. 


### Related Content
Input for your design will come from [User Stories](../artifact-templates/DPR-UserStory.md) and [Use Cases](../artifact-templates/DPR-UseCase.md).


#### Performing Roles and Related Artifacts (Synopsis)
Typically user experience specialist, designer, developer; anyone can do it!

<!--
|**Role**| Input | Output | Comments |
|:-|:-----:|:------:|:--------:|
|  |  |  |  |
-->


#### Practices and Techniques (Refinements, Guides)
User interface mockups can be done with pen and paper and of course with any general purpose graphics software. Specialized tools also exist, here is a non-exhaustive list:

* [Adobe XD](https://www.adobe.com/products/xd.html)
* [Balsamiq Wireframes](https://balsamiq.com/) (used for the example above)
* [Figma](https://www.figma.com/)
* [Miro](https://miro.com)
* [Sketch](https://www.sketch.com/)


### More Information 
See [this course on user interface design intro](https://balsamiq.com/learn/courses/intro-to-ui-design/) as a starting point.


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Practice/Technique User Interface Mocking"
author: Mirko Stocker (STX), Olaf Zimmermann (ZIO)
date: "03, 30, 2021"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```


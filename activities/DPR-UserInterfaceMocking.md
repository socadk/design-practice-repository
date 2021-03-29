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
The need for a new service may arise from different occasions: For example, you are building a new single page web app or adding new features to a mobile app. If the service client does not exist yet, how do you know what responsibilities your service should have, and what message structure is best suited for the service client? 

### Goal and Purpose (When to Use)
<!-- turned purpose into user story (for consistency): -->

> *As a designer and/or developer of user interfaces, user experience specialist, I want to share emerging user interface designs with my stakeholders (for instance, end users and product managers) to solicit their feedback and involve them in the design closely.* 

The goal of *User Interface Mocking* or *Wireframing* in the context of service design is to get a better understanding of the structure, amount, and kind of data a client needs so that the service can be designed accordingly. For example, should a service use [Pagination](https://www.microservice-api-patterns.org/patterns/structure/compositeRepresentations/Pagination) to break response messages into chunks, and what kind of [Reference Management](https://www.microservice-api-patterns.org/patterns/quality/#reference-management/) is best suited? 

*When not to use*. Services and APIs serve different purposes. Some are tailored to a specific frontend (so-called [Backends-for-Frontend](https://samnewman.io/patterns/architectural/bff/) pattern), while others are built for a yet unknown client (i.e., when your product offering is the API itself). If you are not planning on also creating a client for the service, then doing a mockup of its interface might not be the best approach and you might be better served by [Stepwise Service Design](SDPR-StepwiseServiceDesign.md) instead.

### Instructions (Synopsis, Definition)
The fidelity of user interfaces mockups <!-- note: "mocks" refers to the testing concept of a mock, an imitation, whereas a UI mockup is a simple model. --> varies between hand-drawn sketches to pixel perfect, clickable prototypes. A middle way of a rough grayscale layout (to make clear that this is just a mockup and should not be taken as representing the exact outcome) that shows the UI elements and approximate position offers a good cost-benefit ratio.

According to [Balsamiq](https://balsamiq.com/learn/articles/five-steps-to-great-wireframes/), creating a wireframe comprises the following five steps: 

1. *Articulate* the scenario you are addressing. Input for this comes from [User Stories](../artifact-templates/DPR-UserStory) and [Use Cases](../artifact-templates/DPR-UseCase).
1. *Generate* a first mockup, and
1. *Iterate* until you have a few variations for each screen.
1. *Communicate* your results to your team and
1. *Validate* that it actually solves the problem you set out to solve.

The resulting wireframes support [Stepwise Service Design](SDPR-StepwiseServiceDesign.md) from requirements gathering to decomposition. For instance, the first mockup can be used to populate the [Candidate Endpoint List](../artifact-templates/SDPR-CandidateEndpointList.md). A regular alignment of wireframes and the API design, expressed in the [Refined Endpoint List](../artifact-templates/SDPR-RefinedEndpointList.md) and the [API Description](../artifact-templates/SDPR-APIDescription.md), can reduce the risk that the API needs to be reworked for the development of the frontend during Step 7 (API design evolution).
 

### Example(s)

The following wireframe shows a rather simple and basic screen for user management. But it still contains some valuable information for our service design:

* Users can be created, edited and removed. This hints at the role of our service: it is probably an [Information Holder](https://www.microservice-api-patterns.org/patterns/responsibility/endpointRoles/InformationHolderResource).
* Users can be copied. This might be relevant for our service, but it could maybe also be implemented just on the client side.
* The navigation elements at the bottom of the page suggest that there will be a large number of users and that they can be [navigated in pages](https://www.microservice-api-patterns.org/patterns/structure/compositeRepresentations/Pagination). 

![Wireframe Example](/activities/images/Wireframe-Example.png)

### Benefits vs. Effort (Expected Benefits, Skill Levels)
Creating some sort of mockup (whether that is a paper prototype or fully interactive design) is part of most teams workflow anyway, but it is usually done to communicate between designers, developers and customers/end-users and not for service design.


### Hints and Pitfalls to Avoid
Take care not to loose yourself in details, so do not use a graphics program that lets you create a pixel-perfect design, but keep it rough, just like in the example above. This saves time and allows you to focus on the task at hand: figuring out the coarse-grained layout and content of your screens. As an additional benefit, this also clearly communicates to the other stakeholders that you are still far from a working application.


### Origins and Signs of Use
Similar techniques probably have been around since the very beginning of software design. 

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
See [This course on user interface design intro](https://balsamiq.com/learn/courses/intro-to-ui-design/) as a starting point.


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Practice/Technique User Interface Mocking"
author: Mirko Stocker (STX), Olaf Zimmermann (ZIO)
date: "02, 14, 2021 (Source: Project DD-DSE)"
copyright: Olaf Zimmermann, 2020-2021 (unless noted otherwise). All rights reserved.
license: Creative Commons Attribution 4.0 International License
```


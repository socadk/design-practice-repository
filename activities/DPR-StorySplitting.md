---
Scope: Entire system or subsystems (contexts)
Phases: Elaboration, any iteration
Roles: Project managers, agile team members, architects
Input: Epic or large user story
Output: Set of smaller user stories
Abstraction/Refinement Level: n/a (requirements)
---

<!-- Word budget: 1000-1500 (3-5 A4 pages); the practice descriptions should be readable in 5 to 10 minutes (expert vs. novice reader) -->

Activity/Technique: *Story Splitting*
-------------------------------------

### Context
<!-- Keywords, preconditions (input artifacts), performing role -->
A story that is too large for a sprint must be broken down to meet the [INVEST properties](https://xp123.com/articles/invest-in-good-stories-and-smart-tasks/) of user stories:

* I – Independent
* N – Negotiable
* V – Valuable
* E – Estimable
* S – Small
* T – Testable

Several techniques exist; one of them is story splitting.

### Goal and Purpose (When to Use and When not to Use)
<!-- TODO, can be a user story, must identify the performing role and the target audience (producer, consumer) -->
Story splitting is an agile practice that makes stories and their implementation easier to plan. 

The same practice can be used to identify candidate components in architecture design.  


### Instructions (Synopsis, Definition)

Nine splitting patterns are described in <https://agileforall.com/patterns-for-splitting-user-stories/>, covering:

* Workflow step
* Business rule variation 
* Conditions/constraints, sequencing
* Effort, complexity
* Data entry, data variations
* Investigation vs. implementation 

<!-- TODO could add a table mapping the splitting patterns to logical layers and patterns/component types -->

### Example(s)
The patterns can be applied to the "T" case study, assuming this top-level story (a.k.a. epic): 

```
"As a Virtual Service Provider (VSP) and client of 'T', I would like to create telephony orders on behalf of my end customers rapidly and reliably to that they are satisfied and stay with me rather than switch to T or another VSP.". See figure "Story splitting at "T".
```

![Story splitting at "T"](/images/ZIO-TStorySplitting.png) <!-- TODO replace with Spinnaker table from exercise? (and more text in sample solution? -->


### Benefits vs. Effort (Expected Benefits, Skill Levels)
<!-- From AA, should call out what one needs to be able to do on beginner, intermediate, advanced level; as a team -->
TODO


### Hints and Pitfalls to Avoid (Common Pitfalls)
<!-- See ART, don’t overdo etc. -->
TODO


### Origins and Signs of Use
<!-- From PLOPs and from AA -->
The Wayback machine has archived early posts about story splitting: <https://web.archive.org/web/20120909082905/http://lassekoskela.com/thoughts/7/ways-to-split-user-stories/> and <https://web.archive.org/web/20120716060616/http://jbrains.ca/permalink/how-youll-probably-learn-to-split-features>


### Related Content
<!-- in DPR/OLAF and elsewhere -->

#### Performing Roles and Related Artifacts (Synopsis)

* Application architects
* API designers 
* Agile developers


#### Practices and Techniques (Refinements, Guides)

Story Mapping and Example Mapping are related, complementary practices. See <https://www.agilealliance.org/glossary/storymap/> and <https://ecsa2020.disim.univaq.it/details/ecsa-2020-keynotes/3/Mighty-Methods-Four-Essential-Tools-for-Every-Software-Architect-s-Silver-Toolbox>. 


### More Information 
<!-- Further Reading, Academic Publications) -->
The [Agile Glossary](https://www.agilealliance.org/agile101/agile-glossary/) has an entry for [Story Splitting](https://www.agilealliance.org/glossary/split/).

B. Wake suggests [Twenty Ways to Split Stories](https://xp123.com/articles/twenty-ways-to-split-stories/). M. Cohn lists five techniques under the moniker [SPIDR](https://blogs.itemis.com/en/spidr-five-simple-techniques-for-a-perfectly-split-user-story).

Agile for All provides a [Cheat Sheet](https://agileforall.com/wp-content/uploads/2009/10/Story-Splitting-Cheat-Sheet.pdf) that summarizes the patterns. 
* <!-- TODO AppArch exercise 5, fact sheet, slides: <https://blogs.itemis.com/en/spidr-five-simple-techniques-for-a-perfectly-split-user-story> 


### Data Provenance 

```yaml
title: "Design Practice Repository (DPR): Practice/Technique Story Splitting"
author: Olaf Zimmermann (ZIO)
date: "12, 04, 2020"
copyright: Copyright 2020 Olaf Zimmermann. All rights reserved.
license: Creative Commons Attribution 4.0 International License
```



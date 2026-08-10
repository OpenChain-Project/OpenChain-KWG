---
date: 2022-04-03
title: "Challenges and Effects of Adopting InnerSource"
linkTitle: "Challenges and Effects of Adopting InnerSource"
slug: innersource
description: 
author: Haksung Jang / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
categories: ["blog"]
tags: ["InnerSource"]
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: ""
---

Hello, this is Haksung Jang.

InnerSource is a method of introducing open source development methodology inside an organization to maximize cross-team sharing and collaboration, and to gain effects such as faster development speed, transparent communication, and improved code quality.

Several documents explain methods for InnerSource. Today I have briefly summarized the ways to start InnerSource and the expected effects as described in the following material, so please refer to it.

* [Getting Started with InnerSource (Keys to collaboration and productivity inside your company) / Andy Oram](https://little-canada.org/tmp/books/oreilly/Programming/getting-started-with-innersource.pdf)

![](./featured_innersource.png)

## 1. Key Open Source Practices
First, let's look at the key practices emphasized in open source development methodology. How can a massive open source project grow through voluntary participation? Why is it said that participating in an open source project can lead to individual developer growth? This is because open source projects have the following key practices.

### (1) Cross-Team Collaboration

* In open source projects, code is shared with the whole world, so anyone can freely view, learn from, and improve it.
* There are rules for freely creating and merging branches, and tools that make this possible.
* This allows people to work on the same code regardless of their work location.

### (2) Documentation

* Open source projects document code in as much detail as possible.
* This documentation leads to improvements in software architecture. When explaining something through documentation, you come to empathize with the need to change a complex, unintuitive architecture.
* Well-documented projects also make it easier for new contributors to join.

### (3) Continuous Test

* Open source projects generally build a strict system for objectively testing each contribution. This maintains trust among collaborators and guarantees code quality.
* In other words, there are tools and procedures to verify quality before committing a change.
  * unit test
  * continuous integration
  * code coverage
  * static analysis, etc.
* Each developer must write unit tests for their own code.

### (4) All Communication and Decision-Making Is Made Transparently Public

* In open source projects, all communication is made public and left as a record.
* Decisions are mostly made based on discussions on mailing lists.
* Because all communication is documented and left as a record, anyone can understand the project through the documentation and newly join it.


### (5) Developers Can Have Their Skills Recognized, and Mentor Other Developers

* A developer who has contributed many commits can be regarded as a developer with a deep understanding of the project.
* Such a developer comes to be recognized as a Trusted Committer.
* A Trusted Committer is given the qualification to review / approve other developers' work.
* They also play a role in growing contributors into excellent developers by providing them with mentoring.


## 2. Effects of Adopting InnerSource

When a company introduces the open source practices described in section 1 internally, this is called InnerSource. For reference, InnerSource has its techniques and practices developed more systematically by communities such as [InnerSource Commons](https://innersourcecommons.org/).

So what effects can a company expect when it adopts InnerSource?

1. Code reuse increases across the organization as a whole.
   * Developers on each team can understand, use, and contribute to modules and architecture developed by other teams.
2. Code quality improves.
    * Quality improves through unit tests, code coverage, CI (continuous integration), static analysis, code review, and so on.
3. Development speed increases.
    * As developers learn unit tests, code coverage, and CI (continuous integration), bugs decrease and development speed increases.
   * Communicating through written comments may seem to take time at first, but it helps new developers learn the system faster, which further improves development speed.
4. As developers learn new skills in code design, testing, and documentation, they come to think about code design more comprehensively.
5. Developers become better at documentation, which helps other team members understand the project better and make more contributions.
6. Empowering developers can increase their intellectual growth and job satisfaction.

## 3. Challenges to Adopting InnerSource

Now let's look at the challenges a company must consider when trying to adopt InnerSource.

Simply opening and sharing source code internally cannot be expected to produce the effects of InnerSource on its own. The following must necessarily accompany it.

1. Documentation of all code in the repository
2. Providing a collaboration environment and guides, such as GitHub, for collaboration
3. Building a test environment and establishing rules: to guarantee the quality of newly incoming code
    * Running a code coverage test on at least 90% of the code before it is committed
    * Triggering an automatic build when a commit is made
4. Defining modular architecture and APIs to encourage contributions from other organizations
5. Giving participants pride in the work they have done, and actively encouraging them to present at conferences or contribute blog posts


## 4. Why Should Developers Participate in InnerSource Projects?

Even after an InnerSource environment has been built internally, developers who are busy with tasks within their own team may find it daunting to look at or contribute to another team's code. However, participating in InnerSource projects is helpful for developers' own growth.

1. By participating in an internal InnerSource project before jumping straight into an external open source project, developers can learn and become familiar with open source practices.
    * In InnerSource, code review, commits, and testing are carried out in the open source way.
    * Developers become accustomed to documentation.
    * By learning new skills in testing and documentation, they can become excellent developers who think about code design more comprehensively.
2. Simply observing the communication between a Trusted Committer and a Contributor is itself helpful.

For why developers should contribute to open source, please also refer to the following blog post: "[Why Developers Should Contribute to Open Source](https://devocean.sk.com/opensource/techBoardDetail.do?ID=159274)"

Thank you.

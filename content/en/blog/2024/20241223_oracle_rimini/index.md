---
date: 2024-12-23
title: "What the Oracle v. Rimini Street Case Tells Us About the Scope of GPL Derivative Works"
linkTitle: "Oracle v. Rimini Street Case"
description: 
author: Haksung Jang / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
license: Apache-2.0
categories: ["blog"]
tags: ["Oracle v. Rimini", "GPL"]
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: ""
---

## **Introduction**

In disputes over software intellectual property infringement, the concept of "derivative works" is critically important. This concept becomes a central issue especially when dealing with open source licenses such as the [GNU General Public License (GPL)](https://www.gnu.org/licenses/gpl-3.0.html). The recent litigation between [Oracle](https://www.oracle.com/) and [Rimini Street](https://www.riministreet.com/) has drawn renewed attention to the legal interpretation of what counts as a derivative work. This article looks at the background of the case, the key rulings, and the implications for open source licensing.

---

## **Background of the Case**

### **PeopleSoft and Rimini Street**

[PeopleSoft](https://www.oracle.com/applications/peoplesoft/) is an ERP (Enterprise Resource Planning) software product from Oracle that supports functions such as human resources management, financial management, and supply chain operations for businesses. PeopleSoft receives regular updates, and Oracle provides these updates to customers as part of its maintenance services.

[Rimini Street](https://www.riministreet.com/) is a company that provides third-party maintenance services to Oracle customers. Rimini operated by generating PeopleSoft updates on behalf of customers, then modifying or distributing them for deployment to customer systems. In the course of this, Oracle alleged that Rimini had violated its copyrights and license terms, and filed suit.

![](./featured-rimini-street.jpeg)

---

## **The Legal Battle**

### **Initial Ruling: Problems with Process 1.0**

In 2015, the court ruled that the initial operating method Rimini Street used (Process 1.0) infringed Oracle's copyrights. The main problems were as follows:

1. **Cross-use**: Distributing an update generated in one customer's environment to another customer.
2. **Use of Oracle PeopleTools**: Generating updates using Oracle's own software tools.
3. **Copying and distribution**: Copying and modifying PeopleSoft files and providing them to multiple customers.

The court found that this approach violated Oracle's license terms and constituted copyright infringement.

---

### **The Introduction of Process 2.0 and New Disputes**

Starting in 2018, Rimini Street discontinued its previous approach and introduced a new process, **Process 2.0**. Process 2.0 has the following characteristics:

- **Work within the customer's environment**: All update generation and testing is performed within each customer's own PeopleSoft environment.
- **Limited use of automation tools**: Automation tools used previously were minimized or removed.
- **Preventing cross-use**: Data and work product are kept separate between customers to prevent cross-use issues.

Oracle nonetheless argued that copyright infringement continued to occur under Process 2.0. The main issues were that Rimini performed some work on its own servers and that updates generated in one customer's environment were passed on to another customer.

---

### **The 2023 Ruling by the Federal District Court of Nevada**

In July 2023, the Federal District Court of Nevada found that Rimini Street continued to infringe Oracle's copyrights even under Process 2.0. The court identified the following problems with Rimini's approach:

1. Some work was still performed on Rimini's own servers.
2. Cross-use occurred during the distribution of updates.
3. The automation tools Rimini developed were closely tied to Oracle's software.

Accordingly, the court issued a permanent injunction against Rimini.

---

### **The 2024 Appellate Ruling**

In December 2024, the [Ninth Circuit Court of Appeals](https://www.courtlistener.com/opinion/10293082/oracle-international-corporation-v-rimini-street-inc/) reversed part of the Nevada district court's decision and set out a new legal standard:

1. **Narrowing the definition of a derivative work**:
    - For a work to be a derivative work, Oracle's work must be substantially incorporated into it, either literally or nonliterally.
    - Merely interacting with or being compatible with PeopleSoft is not, by itself, sufficient to establish a derivative work.
2. **Reconsidering the cross-use question**:
    - The court remanded the question of whether transferring an update generated in one customer's environment to another customer violated the license terms, for the district court to reconsider.
3. **Possible viability of a §117(a) defense**:
    - The appellate court found that Rimini may have the right, under §117(a), to make copies on behalf of Oracle customers, and ordered this to be reconsidered as well.

---

## **GPL and Derivative Works**

### **How the GPL Interprets Derivative Works**

The [GNU General Public License (GPL)](https://www.gnu.org/licenses/gpl-3.0.html) defines derivative works broadly. It has a "viral" characteristic in that any work combined with GPL-licensed software must also follow the terms of the GPL. According to the [GPL FAQ](https://www.gnu.org/licenses/gpl-faq.html), a work may be considered a derivative work in the following cases:

1. **Modifying code**: Directly modifying the source code of GPL-licensed software
2. **Incorporating code**: Including part of the code of GPL-licensed software in one's own program
3. **Linking**: Statically or dynamically linking against a GPL-licensed library
4. **Plugins or extensions**: Developing a plugin or extension for GPL-licensed software

### **Contrast with the Oracle v. Rimini Ruling**

In this ruling, the appellate court offered a narrower interpretation of what counts as a derivative work:

1. Mere interaction or compatibility does not, by itself, establish a derivative work.
2. A work is recognized as a derivative work only when the code or expression of the original software is "substantially incorporated."

This could spark legal debate over the scope of GPL applicability, and could have a significant effect on where the line is drawn between open source and commercial software.

---

## **Positive Aspects and Remaining Challenges**

This ruling could have the following positive effects:

1. Clarifying the definition of a derivative work, reducing unnecessary legal disputes.
2. Giving third-party maintenance service providers greater latitude.

Even so, challenges remain to be resolved:

- Static/dynamic linking: Whether a program statically or dynamically linked against a C library is a derivative work of that library remains unclear. This may depend on how "substantial" the content of the library's header files is.
- Clarifying the rules governing interaction between open source projects and commercial software.

---

## **Closing**

In *Oracle v. Rimini*, the court's narrower reading of the concept of a "derivative work" gave developers greater freedom, but it also opened the possibility of weakening the reach of open source licenses.

This ruling is a reason for developers to examine the license terms they use more carefully, and it is important to adopt independent design approaches to reduce the risk of legal disputes. Open source is a powerful tool for innovation and collaboration, but it also comes with rules that must be followed.

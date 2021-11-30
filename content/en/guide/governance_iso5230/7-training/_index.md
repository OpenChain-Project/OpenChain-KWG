---
title: "7. Training"
weight: 70
type: docs
description: >
---

## Training

No matter how good policies and processes are in place, they will be useless if no one in the company understands and follows them. In order for the open source policy and open source compliance process to work effectively in the company, it is important to educate employees.

You should provide practical methods, such as training and internal wikis, to ensure that all program participants are aware that there is an open source policy within the company and can take necessary actions. Program participants here mean all employees involved in the development, distribution, and contribution of software by a company, including software developers, distribution engineers, and quality engineers.

Many companies publish open source policy documents through their in-house wiki site, so that any employee can see what they need. In addition, training on open source policy is mandatory for new hires during training, and regular training is provided annually or every two years to program participants so that all program participants are aware of the existence of open source policies. . In other words, you should write these methods as the following example and include the open source policy document.

```
5. Training and Assessment
All program participants should take the open source mandatory 
training provided by [Learning Portal] every year. Through training, 
all participants should be familiar with open source policies and 
processes. Training history is stored in [Learning Portal].
```

If you build an educational environment like this, you can prepare the following evidence required by ISO/IEC 5230.

{{% alert title="ISO/IEC 5230" color="success" %}}

* <b>3.1.1.2 A documented procedure that makes program participants aware of the existence of the open source policy (e.g., via training, internal wiki, or other practical communication method).</b>

{{% /alert %}}


{{% alert title="Self Certify" color="warning" %}}

* <b>1.b : Do you have a documented procedure that communicates the existence of the open source policy to all Software Staff? (e.g., via training, internal wiki, or other practical communication method)</b>

{{% /alert %}}

In addition, you should ensure that program participants are aware of the company's open source policies, the relevant open source objectives, the contributions expected to ensure the effectiveness of the Program, and the implications of failing to follow the Program requirements. To this end, you should provide training and conduct assessments to ensure that program participants are properly aware. The assessment results are documented and stored.

To do this, you can include the example below in your company's open source policy.

```
1. Purpose

(1) Purpose of the policy<sub>(3.1.3.1)</sub>

This policy provides the following principles for all organizations 
involved in software development, service, and distribution in OOO 
Company (hereinafter referred to as the "Company") to properly utilize 
open source software (hereinafter referred to as "Open Source"). 

1. Principles for open source license compliance
2. Principles for contribution to external open source projects
3. Principles for releasing open source

These principles provide a way for all members of the company to 
understand the value of open source, use it correctly, and contribute 
to the open source community.

(2) Impact of non-compliance
It is important that [COMPANY] adheres to this policy. Failure to do 
so may lead to:
- legal claims from the holders of copyright or other intellectual 
  property rights in code we use
- claims from our customers;
- the inadvertent release of [COMPANY] proprietary code;
- breach of regulatory obligations by [COMPANY] potentially leading to fines;
- loss of reputation;
- loss of revenue;
- breach of contract with suppliers and customers.
For this reason, we take breaches of this policy seriously, and any 
individual breaching the policy may find themselves subject to [COMPANY]'s 
disciplinary procedure.

(3) How to contribute to the effectiveness of the Program

All members of the company can contribute to the effectiveness of the 
program and improvement of the company's compliance level by understanding 
the rationale and content of this policy and faithfully performing the 
```
Assessment will be described in more detail later.


If you include the content of such education in your policy, you can prepare the following evidence required by ISO/IEC 5230.

{{% alert title="ISO/IEC 5230" color="success" %}}

* <b>3.1.3.1 Documented evidence of assessed awareness for the program participants - which should include the program’s objectives, one’s contribution within the program, and implications of program non-conformance.</b>

{{% /alert %}}


{{% alert title="Self Certify" color="warning" %}}

* <b>1.f : Do you have evidence documenting the awareness of your personnel of the following topics? <br>i - The open source policy and where to find it;<br>ii - The relevant open source objectives;<br>iii - The contributions expected to ensure the effectiveness of the Program;<br>iv - The implications of failing to follow the Program requirements.</b>

{{% /alert %}}

Open source training also includes content on the open source contribution policy. Even if an open source contribution policy has been created, if program participants are not aware of its existence, there is a risk of harm to individuals and companies due to unexpected copyright infringement. You should provide open source training so that all program participants are aware of the existence of the open source contribution policy.

If you provide training on the contribution policy in this way, you can prepare the following evidences required by ISO/IEC 5230.

{{% alert title="ISO/IEC 5230" color="success" %}}

* <b>3.5.1.3 A documented procedure that makes all program participants aware of the existence of the Open Source contribution policy (e.g., via training, internal wiki, or other practical communication method)</b>

{{% /alert %}}


{{% alert title="Self Certify" color="warning" %}}

* <b>5.c Do you have a documented procedure that makes all Software Staff aware of the existence of the Open Source contribution policy?</b>

{{% /alert %}}

If you want to create a new educational material, it may not be easy for the person in charge who is starting the job for the first time. The OpenChain Project has released the reference training slides for anyone to refer to.


{{< imgproc training_slides Fit "900x600" >}}
<center><i>https://www.openchainproject.org/resources</i></center>
{{< /imgproc >}}

NCSOFT, a Korean game company, has published teaching plans (PPT) and lecture scripts on GitHub so that anyone can use in-house open source educational materials (Korean only).

{{< imgproc ncsofttraining Fit "900x600" >}}
<center><i>https://github.com/ncsoft/oss-basic-training</i></center>
{{< /imgproc >}}

In addition, Kakao, a representative platform company in Korea, has also released open source training materials for in-house developers so that anyone can refer to it (Korean only).

{{< imgproc kakaotraining Fit "900x600" >}}
<center><i>http://t1.kakaocdn.net/olive/assets/opensource_guide_kakao.pdf</i></center>
{{< /imgproc >}}

If you have not yet created training materials, it is also a good way to use open source training materials from these excellent open source management companies.

## Assessment

Once you have designated a person in charge for each role, you should ensure that the person assigned is qualified to perform the role based on education, training and experience. Training should also be provided to program participants with insufficient competencies so that they can acquire sufficient competencies. And the company should assess each participant's competencies and archive the results.

1. Provide training so that each participant has the necessary competencies.
2. Assess based on education content.
3. Keep the assessment results in the company's training system or HR team.

If it is difficult to provide training because there are more than hundreds of participants in the program, it is also a good idea to use the company's online training and assessment system.

You can include this in your company's open source policy as follows.

```
4. Roles, Responsibilities and Competencies
In order to ensure the effectiveness of the policy, the roles and 
responsibilities and the competencies that the person in charge of 
each role should have are defined as follows.
The person/group in charge of each role and the required competency 
level are defined in [Appendix 1. Status of Person in Charge].

5. Training and Assessment
All members in charge of each role defined in Chapter 4 should take 
the advanced open source training course provided by [Learning Portal]. 
Training history and evaluation results are stored in [Learning Portal] 
for at least 3 years.
```

If you have this training and evaluation system, you can prepare the following evidence required by ISO/IEC 5230.

{{% alert title="ISO/IEC 5230" color="success" %}}

* <b>3.1.2.3 Documented evidence of assessed competence for each program participant.</b>

{{% /alert %}}

{{% alert title="Self Certify" color="warning" %}}

* <b>1.e : Have you documented evidence of assessed competence for each Program participant?</b>

{{% /alert %}}

## Open Source License Guide

To properly comply with open source licenses, you must know exactly what each open source license requires. However, since it is difficult for a software developer to figure it out on their own, it is recommended that an open source program manager identify requirements / conditions for common use cases for frequently used open source licenses and share them within the company.

The Open Source License Guide should include requirements specific to common open source licensing use cases to ensure that software developers use open source and comply with its license obligations properly.

For general guides on open source licenses and summary of license obligations, refer to the [Open Source License Checklists](https://www.osadl.org/Access-to-raw-data.oss-compliance-raw-data-access.0.html) provided by the OSADL.

The document [Obligations by license] (https://sktelecom.github.io/guide/use/obligation/) in SK Telecom's open source guide is also a good resource (Korean only).

![](sktlicenseguide.png)
[https://sktelecom.github.io/guide/use/obligation/gpl-2.0/](https://sktelecom.github.io/guide/use/obligation/gpl-2.0/)


If you provide this open source licensing guide, you can prepare the following evidence required by ISO/IEC 5230.

{{% alert title="ISO/IEC 5230" color="success" %}}

* <b>3.3.2.1 A documented procedure for handling the common open source license use cases for the open source components of the supplied software.</b>

{{% /alert %}}


{{% alert title="Self Certify" color="warning" %}}

* <b>3.c Have you implemented a procedure that handles at least the following common open source license use cases for the open source components of each supplied Supplied Software release?<br>i - distributed in binary form;<br>ii - distributed in source form;<br>iii - integrated with other open source such that it may trigger copyleft obligations;<br>iv - contains modified open source;<br>v - contains open source or other software under an incompatible license interacting with other components within the Supplied Software;<br>vi - contains open source with attribution requirements.</b>

{{% /alert %}}


If you build an environment for providing training, assessment and guide in this way, you will comply with ISO/IEC 5230 requirements as follows.

![](trainingno.png)

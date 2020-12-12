---
title: "8th Meeting"
linkTitle: "8th Meeting"
weight: 8
type: docs
description: >
 Online Meeting, Dec 2020
---
<!-- <img src="OpenChain-KWG-7th-1.png" width="90%"> -->

![kwg-logo.gif](openchain-xmas-2.gif)
_<center> < designed by [@soimkim](https://github.com/soimkim) > </center>_

<img src="kwg8-2.png" width="90%">
## Intro

* Schedule: 2020-12-02 (Wed) 2:00~4:00 pm
* How to join
  - Join Zoom Meeting ( https://us02web.zoom.us/j/9990120120?pwd=NzVCaFE2L1RRRFZaSkk0dm8xdlplUT09 )
  - Meeting ID: 999 012 0120
  - Password: 123456

## Agenda

| No | Agenda           | Speaker | Slide |
|----|-----------------|------|------|
| 0  | Intro & Greetings  | Haksung Jang, SK telecom| [Download](./OpenChainKWG-8th-2020-12-02-intro.pdf) |
| 1  | OpenChain Update  | 	Shane Coughlan, Linux Foundation | [Download](./OpenChain%20Korea%20#8%20Keynote.pdf) |
| 2  | How to build open source program in Hyundai Motors | Songha Back, Hyundai Motors |  [Download](./20201202_Hyundai.pdf) | 
| 3  | SCA(Software Composition Analysis)  Market Trend | Robin Hwang, Kakao | [Download](./SCA%20Market%20Wave%202020.pdf) | 
| 4  | Olive, Grand Open | Robin Hwang, Kakao | - | 
| 5  | Case Study | All | - |
| 6  | OpenChain KWG Update | Haksung Jang, SK telecom | [Download](./OpenChainKWG-8th-2020-12-02-update.pdf) |
| 7  | Free Discussion | All | - |

## Case Study
* Subject: What is the subject of open source compliance and security vulnerability checks?
  - Do you perform open source compliance activities for fonts? (Example: Open Font)
  - Does the company distribute mobile apps (Android, iOS) for in-house employees? If so, are you also performing open source compliance activities for them?
  - How do you classify the open source security vulnerability check targets? Do you include not only the software to be distributed, but also the software that is being used for infrastructure and servers as inspection targets?


## Attendees
* Hyundai Mobis
* Hyundai Motors
* Kakao
* ktds
* LINE Plus
* LG Electronics
* NCSOFT
* SamSung Electronics
* SK telecom


## Video

### Introductions and Update

<iframe width="560" height="315" src="https://www.youtube.com/embed/IzED17cZDmM" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Hyundai’s Open Source Governance System

<iframe width="560" height="315" src="https://www.youtube.com/embed/me3g6YHdXlA" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Trends in Software Component Analysis (SCA)

<iframe width="560" height="315" src="https://www.youtube.com/embed/Sn9zxYWsxqQ" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Kakao’s Olive System

<iframe width="560" height="315" src="https://www.youtube.com/embed/whonTsWWtMs" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>



## Minutes
### 1.OpenChain Update (Shane Coughlan, Linux Foundation)
#### OpenChain 2.1-ISO / IEC International Standard
  - Scheduled to be published on 12/14 (Mon)
  - Promotion scheduled for Japanese and Korean companies on the same day
  - Authentication method
    1. Self Certification: https://certification.openchainproject.org/
    2. Independent Assessment: Certification through certification bodies designated in each country
    3. Third-Party Certification: Certification through OpenChain partners such as PWC, TUV SUD, etc. (OpenChain official certificate issuance)
#### Self-Certification Support Language
  - Currently, English, Korean, and Japanese are supported
  - Chinese, German, French, Italian, Spanish, etc. will be available within December
- SPDX 2.2 also enters ISO/IEC Transposition Process
  - To be adopted in the second quarter of 2021
#### Additional support for Openchain T-shirt
- Those who want additional T-shirts can apply for a budget! (Please contact Planning Group: korea-sg-planning@lists.openchainproject.org)

### 2. Hyundai Motors open source governance system (Songha Paik, Hyundai Motors)
#### background
- In 2015, joined the Open Invention Network (OIN): Cross licensing organization for patent rights for open source
  - A lot of OIN promotion was done in industry consortiums where Toyota, BMW, and Honda participate.
- In 2016, after joining OIN from Toyota, donated 10 million dollars and was approved as a Gold Member
- In 2017, received professional training for open source SW licenses and recognized the importance of compliance
- New TFT in 2018
#### Industry characteristics
- More than 100 million lines of software included in automobiles (more weighted than other software)
- More than 3,000 parts are delivered from supply chain companies, and among them, about 300 parts are supplied by the first-tier supplier directly
- How to manage many suppliers is an issue

#### Currently established compliance plan
- Open source management TFT composition under the IP organization
  - Responsible for legal response, distribution of license policies to third-party partners, open source verification, and license notification
- directional
  - Step 1) Establish simple standards
    - Case where only the open source source code is disclosed and notified
    - A case that reveals the edited and added parts
    - Establish countermeasures for the three cases in which all combined user codes are disclosed and notified
  - Step 2) Signed a business agreement with NIPA
    - NIPA asks companies to request verification, and Hyundai Motor Company receives verification reports from companies.
  - Step 3) Utilize the OPENCHAIN ​​project
    - By utilizing the OPENCHAIN ​​project, we are trying to raise the level of open source compliance awareness among companies.

#### Issue: Open source and patents
- Open source can also be protected by patent, and application and registration procedures are required
- It is not only necessary to comply with the licensing regulations, but also check whether there is a problem with the third party's patent rights and whether there is any impact on the company's patent use.
- Hyundai Motor Company cross-licensing related technologies through OIN and Linux System Definition
#### Q&A
1. How many primary and secondary companies are requesting training/verification from NIPA?
    > Since it started this year, about 20 companies still request verification. <br>Currently, open source verification is in progress for new models rather than already released models.
2. What is the patent verification method?
    > There is no tool to match the source code. <br> Knowing the technology and searching for a search word in the patent tool to check if it infringes the patent
3. Were there any patent litigation issues related to open source?
    > There were no litigation cases, but disputes and issues are known to exist.
4. TF was started at Namyang Research Institute, and it will be expanded to the entire company.
5. Are there any special processes in contract
    > Provides drawings and specifications to be observed when requesting technology development. <br> At this time, standard specifications related to open source are provided together to ensure compliance. <br> Plan to create open source related provisions when contracting with companies In this
6. Others: The reason why the former did not join OIN
    > I reviewed OIN subscription twice but eventually did not sign up. <br> It is not clear to what extent should be shared when determining the scope of OIN cross-licensing <br> Companies with many patents may lose their license due to OIN. Judging that there is a risk

### 3. SCA (Software Composition Analysis) Market Trend (Minho Hwang (Robin), Kakao)
#### What is SCA?
- Automated process to discover and manage security, licensing compliance
- SCA related research
  - Gartner Report Research Results
    - The most important tasks when using OSS were the long-term viability of open source projects (#1), open source security issues (#2), and vulnerabilities (#3).
    - SCA tool selection criteria
      1. Vulnerability database: Provides a vulnerability database based on NVD
      2. Developer support: Whether there is an open source evaluation function, recommendation function, etc. before adding IDE and Repository integration code
      3. Open source license compliance: Can set license policies and have the ability to track licenses?
      4. Shorter response time: whether vulnerabilities can be quickly detected and prioritized
      5. Report issuance
  - Forrester Wave Research Results
    - In 2017, SCA was just beginning, and in 2019, existing companies settled in leadership positions and new services were born.
  - According to the G2 software evaluation agency
    - 1st place is called Gitlab, 2nd place is called WhiteSource

> **SCA vs SAST** <br>
> SCA is a tool that manages open source vulnerabilities and licenses, while SAST is a tool that detects flaws in proprietary code and detects vulnerabilities before code production.

#### Introduction of representative SCA tools
- FOSSA
  - The initial concept started as a license compliance management tool, and the project started with 4 people in 2018
  - Support for open source vulnerability management in 2020
  - It is said to have a rich database
- Snyk
  - Contrary to FOSSA, it started as an open source vulnerability management tool, and recently supported license compliance management.
- WhiteSource
  - Whitesource has been providing SCA tools since its inception, and has grown to become a leader among related companies.
  - Linked to Azure, Gitlab, etc.
- SCA companies commonly operate a community such as a blog to provide various information.

#### Q&A
1. When did the term SCA come about?
   > It has already been used for a long time, but it seems that the name SCA has come out in earnest in research results from 2017.
2. Can Github be considered SCA?
   > Open source identification is possible, but it does not appear to be classified as SCA because it does not provide license identification or meta information.
3. Can you provide a list of SCA blogs?
   > To be shared <br> Many SCA companies have blogs, and you can read a lot of high-quality articles.
 
### 4. Olive blitz released (Hwang Min-ho (Robin), Kakao)
-Olive URL: https://olive.kakao.com
-Kakao login-based, Github integration required
-Currently, only the beta version has been released, and will be officially released by expanding the function.
-Some modules will be released as open source

### 5. Case Study
Mailing list member only 


### 6. OpenChain KWG Update (Haksung Jang, SK telecom)
- KWG T-shirt
  - In-house design production (Thanks to Soim!)
  - Served to all applicants (supported by the Linux Foundation)
  - Delivered on November
- ISO Standard PR Korean translation completed
  - https://github.com/OpenChain-KWG/ISO-announce-translate
  - Contributors: Jongho Hong (LG Electronics), Yunhwan Jung (Samsung Electronics), Hanjoo Kim (Hyundai MNSOFT), Dongmin Kim (NCSoft), Heedoo Jin (LG Electronics)
  - There is still something missing, so please give us a lot of feedback to make the translation as natural as possible! (github Issue or PR)
- OpenChain Specification 2.1 Korean translation
  - https://github.com/OpenChain-KWG/Specification-Translation-KR
  - Contributor: Jongho Hong (LG Electronics)
  - The draft translation has been completed, but review is still required. We appreciate your contributions.
- Release of in-house educational materials for Kakao/NCSoft
  - Kakao: https://openchain-project.github.io/OpenChain-KWG/en/blog/2020/11/24/kakao-training-material/
  - NCSOFT: https://openchain-project.github.io/OpenChain-KWG/en/blog/2020/11/23/oss-basic-training-slide/
- Planning Group activity start: https://openchain-project.github.io/OpenChain-KWG/en/subgroup/planning/
- Received a citation from the Minister of Science, Technology, Information and Communication (in the field of merit in the development of the open SW industry): Haksung Jang, SK telecom - https://www.oss.kr/festival/award

### How will the OpenChain KWG meeting be held in the future?
- Would it be better to do it as it is now? Is there a better way?
  - There are a lot of sub-group meetings in Japan, and it would be nice if we could develop a sub-group or study group, but it will be possible only after the corona pendemic ends.
  - If you have any opinions on how KWG proceeds, please feel free to tell us!
- Tooling Group Plan (Wonjae Park, LG Electronics)
  - https://openchain-project.github.io/OpenChain-KWG/en/subgroup/tooling/
  - I am personally studying an open source tool, and I want to induce participation by sharing the study contents in advance.
  - LG Electronics' fossology will be reviewed internally and disclosed by KWG.


## Photo Gallery
<div ><span class="image fit">
  <img src="kwg8-1.png" width="90%">
</span></div>


## OpenChain News
https://www.openchainproject.org/featured/2020/12/09/openchain-korea-work-group-meeting-8-full-recording


![kwg-logo.gif](openchain-xmas.gif)
_<center> < designed by [@soimkim](https://github.com/soimkim) > </center>_

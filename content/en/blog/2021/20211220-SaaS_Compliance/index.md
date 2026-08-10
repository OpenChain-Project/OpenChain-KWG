---
date: 2021-12-20
title: "Is Open Source Compliance Necessary Even When Providing a Service as SaaS?"
linkTitle: "SaaS and Compliance"
slug: saas-compliance
description: "Open Source Compliance for SaaS Vendors"
author: Haksung Jang / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
categories: ["blog"]
tags: ["SaaS"]
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: ""
---

Most open source licenses place no restrictions on simply running the software, but they do require compliance with obligations such as source code disclosure and attribution when the open source is redistributed. Here, "distribution" generally means the physical delivery of software, such as selling an embedded device that carries the software or distributing a mobile app through an app market.  

SaaS providers do not distribute software to deliver their service, so they can be relatively free of license obligations even when they use open source. However, some open source licenses, such as AGPL, impose license obligations even when a service is provided over a network, so care is needed there.

Heather Meeker, a well-known open source attorney in the United States, published a post titled [Open Source Compliance for SaaS Vendors](https://heathermeeker.com/2021/11/23/open-source-compliance-for-saas-vendors/), explaining the open source compliance issues SaaS vendors need to watch for. Today I'd like to introduce this content.

---

## 1. Consider the software distributed to the client side.

Heather first discussed client-side software. On a SaaS platform, most of the software resides on the vendor's server side, but some software is delivered to and runs on the user's computer ("client-side").

Heather used [WordPress](https://wordpress.com/), which provides website-building functionality as SaaS, as an example. Suppose you access WordPress in the Chrome browser and open the screen for building a blog. If you press control-u there (Command + Option + U on a MacBook), you can view the page source code, and you'll see roughly 3,000 lines of source code (of course, most of the source code that makes up the blog-writing functionality runs on [WordPress.com](http://WordPress.com)'s servers).

This client-side code mainly consists of simple logic, such as checking whether values like a date or address entered into a web page's input "form" are valid. There's no need to spend time coordinating with the server for these small tasks. This client-side code is mostly "scripting language" code, typically HTML, JavaScript, and CSS. What's notable here is that, as you can see in the browser, this script code is always delivered in source code form. So even if the code is under a copyleft license like LGPL, there's no need to separately provide the source code.

### How should notice content be provided?

Heather explains that the notice obligation still needs to be considered, and raises an issue. Developers, wanting to keep loading times fast, tend to keep only the minimal amount of open source HTML/CSS/JavaScript code, and because of this they often strip out the copyright and license notices in the code. But when distributing software under a copyleft license like LGPL, you must provide not only the source code but also the full license text.

> [LGPL-2.1](https://www.gnu.org/licenses/old-licenses/lgpl-2.1.html)
> 
> 1. ... *and distribute a copy of this License along with the Library.*
> 

So how should the full text of the LGPL license be delivered while delivering LGPL-licensed JavaScript code to the client side?

One approach Heather suggests is to create a page for open source notices within a screen such as the SaaS system's dashboard, and include a link there showing the full license text.

However, Heather also raises some doubt as to whether even this approach can be considered to fully satisfy the license conditions. In fact, most of the notice obligation clauses in open source licenses were written long before web services existed, and they only assumed the software delivery methods of that time — that the notice would be delivered together with the installation program.

MIT also requires the following.

> [MIT](https://opensource.org/licenses/MIT)
> 
> *The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.*
> 

Given this clause, one could argue that providing the license notice on a separate web page within the SaaS system isn't sufficient either. Of course, providing it this way is still much better than not providing it at all.

### Is minified JavaScript an appropriate way to disclose source code?

Developers minimize the size of code delivered to the client side as much as possible in order to minimize the loading time. To do this, they remove unnecessary comments in the JavaScript code and also strip "white space," among other minification steps.

```jsx
<script id=’wp-media-utils-js-translations’>
	( function( domain, translations ) {
		var localeData = translations.locale_data[ domain ] || 
			translations.locale_data.messages;
		localeData[“”].domain = domain;
		wp.i18n.setLocaleData( localeData, domain );
	} )( “default”, { “locale_data”: { “messages”: { “”: {} } } } );
</script>
```

For example, minifying the code above converts it into the following, and readability naturally suffers.

```jsx
<scriptid=’wp-media-utils-js-translations’>(function(domain,translations){varlocaleData=translations.locale_data[domain]||translations.locale_data.messages;localeData[“”].domain=domain;wp.i18n.setLocaleData(localeData,domain);})(“default”,{“locale_data”:{“messages”:{“”:{}}}});</script>
```

Now, open source licenses that require source code disclosure define "source code" as a form that is convenient to modify.

> [GPL-2.0](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html)
> 
> *3. ...
> The source code for a work means the preferred form of the work for making modifications to it.*
> 

Given that, if LGPL-licensed JavaScript code is minified while being delivered to the client side, can this be considered compliant with the source code provision obligation? Since a user would have difficulty modifying it while minified, shouldn't a separately readable, unminified version of the code be provided?

On this point, Heather says it isn't a problem, because most development tools automatically improve readability by inserting white space and the like, even for minified JavaScript code. In other words, she explained that delivering minified JavaScript code can also be regarded as "the preferred form of the work for making modifications," which is what GPL and LGPL require as the definition of source code.

## 2. Watch out for network copyleft licenses.

Another potential issue Heather raises for SaaS is network copyleft licenses. Some open source licenses, such as AGPL, require disclosure of server-side source code when a user interacts with the software over a network, even without any physical distribution of the software. Heather calls these "network copyleft licenses." AGPL-3.0, a representative network copyleft license, defines the obligation regarding remote network interaction in Section 13 as follows.

> AGPL-3.0
> 
> 13. Remote Network Interaction; Use with the GNU General Public License.
> 
> *... if you modify the Program, your modified version must prominently offer all users interacting with it remotely through a computer network (if your version supports such interaction) an opportunity to receive the Corresponding Source of your version by providing access to the Corresponding Source from a network server at no charge, through some standard or customary means of facilitating copying of software.*
> 

In other words, if AGPL software is used in the following two ways, you must provide the source code:

1. You modify the software, and
2. Users interact with the software over a network

One might then ask, isn't it perfectly fine to just use it without modification? Even if a developer doesn't modify it at first when introducing AGPL-3.0 open source, over time a situation may arise where modification becomes necessary. As time passes, some other developer may make modifications for functional, performance, or compatibility reasons, without taking the AGPL license into account. So while claiming "no one will modify this AGPL-3.0 open source, so there's no need to worry about license compliance" may sound plausible for now, it can't account for the possibility of future changes.

For reference, Google created an "[AGPL Policy](https://opensource.google/docs/using/agpl-policy/)" to make clear that code under AGPL cannot be used at Google.

> [Google’s AGPL Policy](https://opensource.google/docs/using/agpl-policy/)
> 
> ***WARNING:** Code licensed under the GNU Affero General Public License ([AGPL](https://en.wikipedia.org/wiki/GNU_Affero_General_Public_License)) MUST NOT be used at Google.
> 
> The license places restrictions on software used over a network which are extremely difficult for Google to comply with. Using AGPL software requires that anything it links to must also be licensed under the AGPL. Even if you think you aren’t linking to anything important, it still presents a huge risk to Google because of how integrated much of our code is. **The risks heavily outweigh the benefits.***
> 

Google explains that it created the AGPL Policy for the following reasons.

- AGPL requires that anything that links with AGPL software also be licensed under AGPL. (a "viral" effect)
- This viral effect is triggered not only when the software is distributed, but also when a user accesses a product or service through a remote network interface.
- Because Google's core products (Search, Gmail, Maps, YouTube, etc.) are services that users interact with through a remote network interface, the situation becomes serious if engineers depend on AGPL software when developing such services.
- Given this, Google finds it very difficult to comply with AGPL's requirements for software used over a network.

Heather explains that, besides AGPL-3.0, there are several other licenses that include network provisions like this.

- Server Side Public License
- Open Software License
- Non-Profit Open Source License
- Artistic 2.0
- Apple Public Source License
- RealNetworks Public Source License
- Reciprocal Public License
- Honest Public License
- Academic Free License ***[Note: this license is permissive. The others are copyleft.]***

Heather says that most companies classify these network copyleft licenses as high-risk licenses and have a policy of not using them in SaaS development.

Actually, I used to think that since AGPL-3.0 only imposes the source disclosure obligation when the software has been modified, using it without modification should be fine. So my position was that there was no real need for a company to have a policy specifically banning the use of AGPL-3.0. But when I consider whether a company actually has systems in place internally to guarantee that the software won't be modified even years down the line, even if it isn't modified when it's first introduced, I can no longer be so sure it won't ever be modified. So, like Google, I think it's reasonable, from a license management perspective, to adopt a default policy that restricts the use of AGPL-3.0 open source.

## 3. Consider that SaaS code may need to be distributed someday.

Heather says that because the server-side code of a SaaS platform is also almost always distributed at some point eventually, open source compliance needs to be considered for the server-side code as well. Situations where SaaS code ends up being distributed include the following.

- Sale of the organization responsible for the SaaS
- Migration of the SaaS server to a customer's server
    - Server migration due to requirements from heavily regulated industries such as finance or health
    - Server migration due to security issues
    - Server migration to prevent privacy problems arising from cross-border data movement, etc.
- Productization of an internal SaaS tool, etc.

Considering that such situations can arise, Heather explains that even when developing a SaaS service, companies should avoid combining GPL or AGPL open source with their own proprietary code, in anticipation of possible future distribution.

Some may see this as an overly cautious policy, but I think it's an argument well worth considering. In particular, given the recent trend of open source commonly used on servers changing its license, establishing a system to identify and manage the Software Bill of Materials even for server-side programs is becoming an essential process for companies.

---

In the past, some companies' open source compliance policies excluded open source used only on internal servers, without external distribution, from open source review altogether. However, given (1) open source licenses with network copyleft clauses such as AGPL, and (2) the trend of software changing its license from open source to a commercial software license, a management system for license compliance is becoming necessary for server-side software as well. Companies will need to improve their policies and processes for this, and adopt tools that can automatically generate a Bill of Materials for server-side software.


{{% pageinfo %}}
This paper was translated by Haksung Jang from the English version available at this [white paper](https://heathermeeker.com/2021/11/23/open-source-compliance-for-saas-vendors/).  The original author, [Heather Meeker](https://heathermeeker.com/about-me/), has not reviewed this translation.
{{% /pageinfo %}}

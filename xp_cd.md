
<!-- GENERATED DOCUMENT! DO NOT EDIT! -->
# Continuous Delivery #
#### Also Known as CD ####

## Table Of Contents ##

- [Section 1: Summary](#user-content-summary)
- [Section 2: Goal](#user-content-goal)
- [Section 3: Benefits](#user-content-benefits)
- [Section 4: What are my responsibilities](#user-content-what-are-my-responsibilities)
- [Section 5: How do I go about it](#user-content-how-do-i-go-about-it)
- [Section 6: Hot Tips and Tricks](#user-content-hot-tips-and-tricks)
- [Section 7: F.A.Q.](#user-content-f.a.q.)
- [Section 8: Other Resources](#user-content-other-resources)
- [Section 9: Back To Other Documents](#user-content-back-to-other-documents)

## Summary ##

Continuous Delivery (CD) is a practice focused on changing the view of the codebase as it is being developed. This view change is forced by pushing every commit/check-in to production even (especially) when the code is unfinished. Since every commit/check-in is pushed to production the focus needs to be building in small increments that do not cause production to fail. It is the idea that every change we make needs to be safe and stable.
    

## Goal ##

The goal of Continuous Delivery (CD) is to ensure that software can be released to production at any time. It aims to reduce the time and effort required to deliver software updates, enabling faster feedback loops, higher quality releases, and increased business agility.
    

## Benefits ##

* Faster time to market.
* Early Bug Detection
* Fast feedback and quicker response to customer needs.
* Reduced risk of failed deployments.
* Continuous delivery of value to end-users.
* A culture of collaboration and shared responsibility among development, operations, and other stakeholders, leading to improved communication and efficiency in the software delivery pipeline.
    

## What are my responsibilities ##

### Customer/Product Owner ###

The customer/product owner’s responsibility is to actively participate in the feedback loop. They should be continuously engaging with the product as portions are released and letting the developers know what they like and don’t like.

### Coach ###

The coach’s responsibility is to help the team focus on getting the most out of the practice. They will guide the team in incrementally building the system and remind the team of advanced techniques and tools that might be beneficial to try. (e.g., Feature Flags). They will also remind the team to frequently review what they have done and ask if there is a better/easier way.

### Development Team ###

The development team is responsible for implementing the Continuous Deployment process and ensuring it is beneficial to both the team and the company. They will be required to research advanced techniques and determine if those techniques make sense and will simplify the process based on their constraints.
    

## How do I go about it ##

<table style="border=none!important">
<tr><td width=30%></td><td width=40%></td><td width=30%></td></tr>
<tr>

<!-- 1st Item -->
<td>
    <img src="./images/cd/pexels-fauxels-3184418.jpg" >
</td>
<td colspan=2>

### 1.	Focus on a Culture of Collaboration ###

Establish a culture of collaboration and shared responsibility among development, operations, and other stakeholders, fostering a mindset of continuous improvement and learning.

</td>
</tr>

<!-- 2nd Item -->
<tr>
<td colspan=2>

### 2.	Automation ###

Automate the entire software delivery process, of building and deploying code changes, to ensure a reliable and repeatable process.

</td>
<td width=30%>
    <img src="./images/cd/pexels-alex-knight-2599244.jpg" >
</td>
</tr>

<tr>

<!-- 3rd Item -->
<td>
    <img src="./images/cd/pexels-just-a-couple-photos-3421636.jpg" >
</td>
<td colspan=2>

### 3.	Setup Pipelines ###

Implement deployment pipelines that enable the continuous deployment of software updates to production and production-like environments, with proper monitoring and rollback mechanisms in place to ensure a smooth and controlled release process.

</td>
</tr>


</table>
    

## Hot Tips and Tricks ##

### Combine with Continuous Integration (CI) ###

CD does not really work without the rigor of CI backing it. Starting with CI will make implementing CD easier giving you the benefits of CI/CD. This provides a comprehensive approach to software development and delivery.

### Use Advanced Techniques as Necessary ###

Advanced techniques like feature toggles, canary releases, Infrastructure as Code, Containerization, and red-blue releases can easily make your life easier or more complex. Understanding what these techniques are and when to use them is essential to getting the most out of CD.
    

## F.A.Q. ##

### Whats the difference between Continuous Integration and Continuous Development? ###

The primary difference between Continuous Integration (CI) and Continuous Delivery (CD) lies in their scope and objectives. CI focuses on automating code integration and running tests to detect integration issues early. CD, on the other hand, encompasses the entire software delivery process, including automated testing, deployment, and release to production-like environments. While CI ensures that code changes can be integrated smoothly, CD ensures that software can be released to production reliably at any time. CD extends the CI process by automating the delivery pipeline and enabling frequent, incremental releases, reducing time to market and increasing business agility.

### What are the potential risks and challenges associated with implementing Continuous Delivery, and how can we mitigate them? ###

There is a potential risk is the increased complexity of the delivery pipeline, which may require additional effort and resources to set up and maintain. This can lead to challenges in ensuring the stability and reliability of the CD process. This can lead to the fragility of system increasing to a point that the system become un-releasable.

Another challenge is the need for cultural and organizational changes, as CD requires collaboration and shared responsibility across teams. Without these changes you lose a lot of the proposed benefits of CD, and releases can be held up in handoffs and cross communication issues.

There are security risks that can arise from the rapid and frequent deployment of code. With the focus on rapid development and release security can easily become overlooked.

Mitigating these risks involves investing in proper training and support for teams, fostering a culture of continuous improvement and learning, and gradually implementing CD practices to minimize disruption. Use of tools like automated vulnerability scanning, linting as well as regular monitoring, feedback, and iteration are crucial in identifying and addressing any issues that arise during the implementation of CD.

Overall, a well-defined strategy, proper tooling, and a focus on continuous improvement can help overcome the potential risks and challenges associated with implementing Continuous Delivery.

### What are the key metrics and indicators we should track to measure the success and effectiveness of our Continuous Delivery practices? ###

#### Warning ####

Do not set targets based on these metrics. Use the metrics to ask useful questions but be careful to prevent them from being targets. Once a metric becomes a target it stops being a useful metric. This is in part that people will make decisions that are overall bad for the system based on achieving a target. This is done intentionally as our vision narrows when we focus in on achieving something specific.

#### Lead Time ####

Lead time is the measure from the time an idea enters the system to the time the idea is delivered to the customer. A small average lead time indicates a higher agility and faster customer responsiveness.

#### Cycle Time ####

Cycle time, which measures the time taken from code commit to production deployment. A shorter lead time indicates faster delivery and agility. Additionally, organizations should track the mean time to recover (MTTR), which measures the time taken to recover from failures or incidents. A lower MTTR indicates effective incident response and resolution.

#### First Time Yield ####

First Time Yield is the measure of things released to production subtract the number of defects that were detected all over the total number of things released. The closer this is to 100% the better you are doing. This should be measured over a longer time period then a single incremental cycle (a.k.a. sprint) and should probably span 6 to 9 cycles or more.

#### Net Promoter Score ####

Monitoring customer satisfaction and feedback, such as through Net Promoter Score (NPS) or customer surveys, can also provide insights into the impact of Continuous Delivery on user experience. This will give you insight on how your process is either failing or supporting the customer.

#### Others ####

There are other useful metrics not listed here that all depend on your need. It is a worthy endeavor to research such things.
    

## Other Resources ##

[CONTINUOUS DELIVERY SIMPLY EXPLAINED](https://www.youtube.com/watch?v=qiDIif7JVMo)(YouTube 17:22)
[5 Steps to Master Continuous Delivery](https://www.gartner.com/smarterwithgartner/5-steps-to-master-continuous-delivery)(Article)
[Continuous Delivery: Reliable Software Releases through Build, Test, and Deployment Automation by Jez Humble and David Farley](https://a.co/d/6n5KXMF)(Amazon Book Link)
    

## Back To Other Documents ##

[Documents about XP Practices](README.md)
    

<!-- GENERATED DOCUMENT! DO NOT EDIT! -->
    
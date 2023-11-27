
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

Advanced techniques like feature toggles, canary releases, and red-blue releases can easily make your life easier or more complex. Understanding what these techniques are and when to use them is essential to getting the most out of CD.


    

## F.A.Q. ##

### TBD ###

TBD
    

## Other Resources ##

TBD
    

## Back To Other Documents ##

[Documents about XP Practices](README.md)
    

<!-- GENERATED DOCUMENT! DO NOT EDIT! -->
    
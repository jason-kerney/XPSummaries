<!-- GENERATED DOCUMENT DO NOT EDIT! -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->

<!-- Compiled with doculisp (version 2.0.5) https://www.npmjs.com/package/doculisp -->

# Behavior-Driven Development (BDD) #

## Table of Contents ##

1. [Section: Summary](#summary)
2. [Section: Goal](#goal)
3. [Section: Benefits](#benefits)
4. [Section: What are my responsibilities](#what-are-my-responsibilities)
5. [Section: How do I go about it](#how-do-i-go-about-it)
6. [Section: Hot Tips and Tricks](#hot-tips-and-tricks)
7. [Section: F.A.Q.](#faq)
8. [Section: Other Resources](#other-resources)
9. [Section: Back To Other Documents](#back-to-other-documents)

## Summary ##

Behavior-Driven Development (BDD) is a practice that focuses on changing the way developers talk about code. It changes the language's focus to business-centric and removes technical jargon. Focusing on business language ensures the developers and the customer use the same terms to mean the same thing. This means that the developers must spend time learning the business domain and gaining insight into the customers' needs, enabling better partnerships.

## Goal ##

Behavior-Driven Development aims to focus development on the business domain and reduce abstractions of thought by unifying the language between developers and customers.

## Benefits ##

* Test cases that the customer can read and validate.
* Unified business-centric language.
* A focus on the business domain by developers.
* Reduction of the need for customers to know the developer domain.
* Can be applied to Test-Driven Development or Acceptance Test-Driven Development.

## What are my responsibilities ##

### Customer/Product Owner ###

You are the person who understands the domain best. You need to be the one to ensure that tests are understandable in domain terms. It would be best if you were diligent about spotting programming technical terms and pushing against them. You are also responsible for ensuring the developers understand the domain jargon.

### Coach ###

You must focus on the communication and listen for when it breaks down. Your goal is to facilitate understanding and notice when people are saying different things but believe they are in agreement.

### Development Team ###

You are in a position to learn about the business. The more you understand the processes impacted by your application the better your application will fit the need. This means paying attention to processes outside your application as they still affect you. Focus on getting the domain jargon correct. Focus on speaking in the domain jargon, even when talking about code.

## How do I go about it ##

<table style="border=none!important">
<tr><td width=30%></td><td width=40%></td><td width=30%></td></tr>
<tr>

<td>
    <img src=./images/bdd/pexels-jimmy-chan-1309899.jpg >
</td>
<td colspan="2">

### 1.	Start with your native language. ###

Describe each test in your native language; you cannot use programming terms in this description. The description should have a title and describe the steps used to perform the test. This should be detailed enough to translate the description sentence by sentence into code.

</td>
</tr>
<tr>
<td colspan="2">

### 2.	Work with the customer or customer representative. ###

Someone representing the customer should be able to read your description and verify that it is correct. It is better if, initially, this person has the least programming knowledge. It will help filter out confusing terms. When the customer is confused by a term, ask them for a better one. The point here is for the developer to learn the customer's language.

When the developer is introduced to a new term, take time to understand what that term means and in what context it takes that meaning. This will deepen the developer’s understanding of the domain. This is also true if the customer suggests changes to the test description.

</td>
<td>
    <img src="./images/bdd/pexels-thirdman-7652188.jpg" >
</td>
</tr>
<tr>
<td>
    <img src="./images/bdd/pexels-markus-spiske-1089438.jpg" >
</td>
<td colspan="2">

### 3.	Translate the test description into executable code, focusing on business terms. ###

When translating the description into code, ensure you avoid technical jargon when it is unless absolutely necessary. The code must read like the description. A good test of this is to have the customer compare the two and ask questions.

</td>
</tr>
</table>

## Hot Tips and Tricks ##

### Use Tools ###

There are a few tools out there that can minimize the effort in using Behavior-Driven Development. These tools primarily reduce the work of translating the description into executable code. The most popular of these is [Cucumber](https://cucumber.io/). Cucumber takes a very structured English description and makes it executable.

### Pair with Domain-Driven Development ###

Domain-Driven Development is a process where the domain of the problem trying to be solved is explored and mapped before development starts and incrementally as development continues. Since Domain-Driven Development is also focused on unifying the language around a domain, it pairs nicely with Behavior-Driven Development.

### Behavior-Driven Development Takes Time to Learn ###

This practice takes time to learn and more time to master. The biggest problem developers face when starting down the path of BDD is that the test project can become unruly. This problem is caused by the developer not knowing how to develop cleanly in this new way of working. The developer needs to focus on the skills that allowed them to be successful and figure out how to apply them in this new context.

## F.A.Q. ##

### How is BDD different from Test-Driven Development? ###

Both are a test-first approach. However, Behavior-Driven Development focuses on a common language and understanding. Test-Driven Development focuses on code architecture. It is possible to combine the two. You can do TDD while working in a customer-centric language. This has some real advantages, as it now allows a customer to look at the small details of what you develop and catch misunderstandings earlier.

### How is BDD different from Acceptance Test-Driven Development? ###

Both are a test-first approach. However, Behavior-Driven Development focuses on a common language and understanding. Acceptance Test-Driven Development focuses on a shared understanding of the intent of a story. The two can be combined. You can do ATDD by working in a customer-centric language. This has the advantage the customer can understand the tests that verify the acceptance criteria. This will catch subtle errors that can be made between the definition of the acceptance test and the creation of the code for the acceptance test.

### Do I have to use Cucumber or Another Specialty Tool? ###

Maybe. You can make this work with any test framework in most programming languages. The downside is you will do much more work to get the benefits.

### Can I do BDD without a customer representative? ###

Sort of. If you do not have a customer representative reading your tests, then you have no validation that the tests match the business domain.

## Other Resources ##

[What is #BDD (Behaviour Driven Development)?](https://www.youtube.com/watch?v=GavBjhAp42o)(YouTube 11:54)

## Back To Other Documents ##

[Documents about XP Practices](README.md)

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->
<!-- GENERATED DOCUMENT DO NOT EDIT! -->

<!-- GENERATED DOCUMENT! DO NOT EDIT! -->
# Refactoring #

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

Refactoring is the practice of changing the internal structure of code without changing its external behavior. Because of possible subtle errors that  can occur, refactoring is only refactoring when guided with automated tests.
    

## Goal ##

The goal of refactoring is to improve the maintainability of the code. The intent is that the difficulty to change the code remains both a constant and a minimum over the lifetime of the code. You do this by removing micro-architecture errors called "smells". You will never be able to remove all the micro-architecture errors, so you want to target those that are most prominent.
    

## Benefits ##

* Reduction in maintenance costs
* Faster implementation of new features
* Easier on-boarding of new hires
    

## What are my responsibilities ##

### Customer/Product Owner ###

The customer has the responsibility to not pressure the team to skip refactoring with-out a very good short term reason and a plan to pay back the effort later.

### Coach ###

The coach has a responsibility to ensure that the team is thinking about constant refactoring opportunities. They are also responsible for protecting the team from external pressures that may lead to refactoring being skipped.

### Development Team ###

TBDThe development team is responsible for ensuring that refactoring is happening. Much as a chef cleans as they work, so must the development team. They also must take time to learn and experiment with skills that will enable them to be better at this activity.
    

## How do I go about it ##

<table style="border=none!important">
<tr><td width=30%></td><td width=40%></td><td width=30%></td></tr>
<tr>

<!-- 1st Item -->
<td>
    <img src="./images/refactoring/pexels-kollipara-hemanth-18366881.jpg" >
</td>
<td colspan=2>

### 1.	Write Automated Tests ###

It is not refactoring if external behavior changes. There are only two ways that might ensure that this is true. The first is to have a comprehensive suite of automated tests. The second is to use provable refactorings.
A provable refactoring is one that can be proven mathematically to be safe. This is an advanced topic and out of scope for this body of work.

With that I will focus on automated tests. I understand that automated tests do not actually ensure that bugs are not generated but they do reduce the surface area where a bug can occur. The better your tests, the smaller the surface area. This becomes a balancing act between time used in testing and how much it reduces the risk. You are on average better if you start with TDD, but that is not necessary.

</td>
</tr>

<!-- 2nd Item -->
<tr>
<td colspan=2>

### 2.	Learn about Code Smells and When to Remove Them ###

Code Smells are micro-architectural errors that will always exist within code. Learning what they are and how to get rid of them is worthwhile. There is research that suggests that denser the code is with code smells the more likely there is a bug.

#### The Rule of Three ####

Learning when to remove them is an art. A handy rule of thumb is called “The Rule of Three.” It says that a code smell gets to live until one of two conditions are true:
1.	The code smell is replicated 3 times.
2.	Three or more code smells can be removed with the application of a single pattern.
The problem here is that this is a rule of thumb. It should not be followed blindly. There will be times when it makes since to remove a code smell before it qualifies “The Rule of Three.” There will be other times when it will not make since to remove a code smell just because it qualifies the rule.

#### Paving the Way ####

Another common way to decide when to remove smells is to wait until you have a change in the relevant area. Then you look at what it would take to make that change easier. Sometimes having the smells actually makes the change easier because they have multiple ways to be removed, and one of those ways will benefit what you are currently doing.
Other times the smells will make changing the code harder, and so you need to removed them first so that the desired change is easier to make.

</td>
<td width=30%>
    <img src="./images/refactoring/pexels-amine-km-5712211.jpg" >
</td>
</tr>

<!-- 3rd Item -->
<td>
    <img src="./images/refactoring/pexels-samuel-figueroa-2106249.jpg" >
</td>
<td colspan=2>

### 3.	Learn SOLID development ###

SOLID is an acronym that is used to define well designed software. It stands for:

* Single Responsibility Principle
* Open Closed Principle
* Liscov Substitution Principle
* Interface Segregation Principle
* Dependency Inversion Principle

Though, this was originally defined in terms of object-oriented code, the principles have been translated into both Functional Programming and even Procedural Programming as well as others. These principles can guide us to know when to refactor. When we are in violation of a single principle, and that violation is making the code difficult to change, then we refactor that code.

</td>
</tr>

<!-- 4th Item -->
<tr>
<td colspan=2>

### 4.	Refactor to Understand ###

An often-overlooked practice in refactoring is that it can be used to gain insight into a piece of code you are about to change. Here you will need to make change to a piece of code you do not understand, and so you will start to tease meaning out of it by doing refactorings. You do this until you understand enough to make your change, and you have made the change easier to make.

</td>
<td width=30%>
    <img src="./images/refactoring/pexels-oladimeji-ajegbile-2696299.jpg" >
</td>
</tr>
</table>
    

## Hot Tips and Tricks ##

### Use an IDE with Refactoring Tools ###

An Integrated Development Environment (IDE) is a tool that makes development easier. Many of these tools have built in refactoring options and/or have plug-ins that provide those options. These will automate the steps taken in a refactoring.

It is worth noting, that these tools are just software and can have bugs just like any other software. As, such, performing an automated refactorings without viability of proof or automated tests is not refactoring even if the tool calls it such.
    

## F.A.Q. ##

### What is a "Provable" Refactoring? ###

I will provide a link to the blog of the person who coined the term in other resources.
    

## Other Resources ##

[Provable Commits (Article)](https://corgibytes.com/blog/2019/09/05/provable-commits/)

[Refactoring: Improving the Design of Existing Code (2nd Edition) by Martin Fowler (Amazon Link)](https://a.co/d/2XZRgaR)

[Refactoring to Patterns by Joshua Kerievsky (Amazon Link)](https://a.co/d/1yIIKMH)

[Working Effectively with Legacy Code by Michael Feathers (Amazon Link)](https://a.co/d/iWnGtBf)

[Code Smells (WikiPedia Article)](https://en.wikipedia.org/wiki/Code_smell)

[Code Smells Catalog (Interactive Website)](https://luzkan.github.io/smells/)
    

## Back To Other Documents ##

[Documents about XP Practices](README.md)
    

<!-- GENERATED DOCUMENT! DO NOT EDIT! -->
    
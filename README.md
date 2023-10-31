
<!-- GENERATED DOCUMENT! DO NOT EDIT! -->
# XP Sumaries #
#### Quick Introductions to XP Practices ####

## Table Of Contents ##

- [Section 1: Introduction](#user-content-introduction)
- [Section 2: A List of Available Documents](#user-content-a-list-of-available-documents)
- [Section 3: Behavior-Driven Development](#user-content-behavior-driven-development)
- [Section 4: Ensemble or Mob Development](#user-content-ensemble-or-mob-development)
- [Section 5: Contributors](#user-content-contributors)

## Introduction ##

I was asked to write short summaries about Extreme Programming Practices and to make those summaries widely available. The target audience is anyone who wants a brief description. I will include resources in that description if people want to know more.
    

## A List of Available Documents ##

* [Test-Driven Development (TDD)](.\xp_tdd.md)
* [Acceptance Test-Driven Development (ATDD)](.\xp_atdd.md)
    

## Behavior-Driven Development ##

Also called BDD.

### Summary

Behavior-Driven Development (BDD) is a practice that focuses on changing the way developers talk about code. It changes the language's focus to business-centric and removes technical jargon. Focusing on business language ensures the developers and the customer use the same terms to mean the same thing. This means that the developers must spend time learning the business domain and gaining insight into the customers' needs, enabling better partnerships.

### Goal

Behavior-Driven Development aims to focus development on the business domain and reduce abstractions of thought by unifying the language between developers and customers.

### Benefits

* Test cases that the customer can read and validate.
* Unified business-centric language.
* A focus on the business domain by developers.
* Reduction of the need for customers to know the developer domain.
* Can be applied to Test-Driven Development or Acceptance Test-Driven Development.

### Guidance

#### 1.	Start with your native language.

Describe each test in your native language; you cannot use programming terms in this description. The description should have a title and describe the steps used to perform the test. This should be detailed enough to translate the description sentence by sentence into code.

#### 2.	Work with the customer or customer representative.

Someone representing the customer should be able to read your description and verify that it is correct. It is better if, initially, this person has the least programming knowledge. It will help filter out confusing terms. When the customer is confused by a term, ask them for a better one. The point here is for the developer to learn the customer's language.

When the developer is introduced to a new term, take time to understand what that term means and in what context it takes that meaning. This will deepen the developer’s understanding of the domain. This is also true if the customer suggests changes to the test description.

#### 3.	Translate the test description into executable code, focusing on business terms.

When translating the description into code, ensure you avoid technical jargon when it is unless absolutely necessary. The code must read like the description. A good test of this is to have the customer compare the two and ask questions.

### Video Description

[What is #BDD (Behaviour Driven Development)?](https://www.youtube.com/watch?v=GavBjhAp42o)

### Hot Tips and Tricks

#### Use Tools

There are a few tools out there that can minimize the effort in using Behavior-Driven Development. These tools primarily reduce the work of translating the description into executable code. The most popular of these is [Cucumber](https://cucumber.io/). Cucumber takes a very structured English description and makes it executable.

#### Pair with Domain-Driven Development

Domain-Driven Development is a process where the domain of the problem trying to be solved is explored and mapped before development starts and incrementally as development continues. Since Domain-Driven Development is also focused on unifying the language around a domain, it pairs nicely with Behavior-Driven Development.

#### Behavior-Driven Development Takes Time to Learn

This practice takes time to learn and more time to master. The biggest problem developers face when starting down the path of BDD is that the test project can become unruly. This problem is caused by the developer not knowing how to develop cleanly in this new way of working. The developer needs to focus on the skills that allowed them to be successful and figure out how to apply them in this new context.

### F.A.Q.

#### How is BDD different from Test-Driven Development?

Both are a test-first approach. However, Behavior-Driven Development focuses on a common language and understanding. Test-Driven Development focuses on code architecture. It is possible to combine the two. You can do TDD while working in a customer-centric language. This has some real advantages, as it now allows a customer to look at the small details of what you develop and catch misunderstandings earlier.

#### How is BDD different from Acceptance Test-Driven Development?

Both are a test-first approach. However, Behavior-Driven Development focuses on a common language and understanding. Acceptance Test-Driven Development focuses on a shared understanding of the intent of a story. The two can be combined. You can do ATDD by working in a customer-centric language. This has the advantage the customer can understand the tests that verify the acceptance criteria. This will catch subtle errors that can be made between the definition of the acceptance test and the creation of the code for the acceptance test.

#### Do I have to use Cucumber or Another Specialty Tool?

Maybe. You can make this work with any test framework in most programming languages. The downside is you will do much more work to get the benefits.

#### Can I do BDD without a customer representative?

Sort of. If you do not have a customer representative reading your tests, then you have no validation that the tests match the business domain.

    

## Ensemble or Mob Development ##

### Summary

Ensemble Development is a practice that brings the whole team together to work in a highly collaborative way. Everybody works on the same thing at the same time, on the same computer. The focus here is active, vibrant communication. The practice does not generate all or any benefits if the communication is stifled, rigid, or non-existent.

### Goal

Ensemble Development aims to amplify collaboration. It is worth noting that sometimes, to amplify collaboration, you will need to focus on teaching and learning. However, it is important not to let the teaching override the collaboration.

### Benefits

* Shared understanding of the work being done.
* High bandwidth education of people less experienced with the work being done.
* High quality of work.
* More points of view being incorporated into the work.
* Faster than solo development.

### Guidance

#### 1.	Decide on the work to be done.

This works well when the work to be done has any of the following attributes:

* The understanding is unevenly distributed.
* The work is complicated, making it easy to make a mistake.
* The work is complex, and all the requirements of the work being done cannot be known upfront.

#### 2.	Decide how and where you are going to work.

There are many roles and two positions when doing this type of work. The two positions are Driver and Navigator. The person who has control of the keyboard is the driver. Everyone else is the navigator. The driver's job is to listen to all the navigators and distill that into a coherent change. The navigator's job is to guide at the highest possible level where the changes are going.

The role a person takes on depends on what is needed. It could be someone paying attention to security requirements, coding standards, spelling errors, or whatever seems necessary at the time. You can examine the roles presented in the [Mob Programming Role Playing Game](https://github.com/willemlarsen/mobprogrammingrpg) for ideas of where to start.

It is recommended that you use a practice called Strong Navigation. This means that the person with the idea cannot touch the keyboard. This forces an idea to go through at least one other individual before entering a computer.

It is also recommended that you rotate who is in the Driver position to prevent one person from not having their ideas heard and keep one from feeling stuck. This can be done on a timer, at a logical stopping point, or any other method.

You will need to decide if you are doing Strong Navigation or not and how to rotate the driver position. You will also need to determine where the work will be done. The notion of the same computer is squishy as the intent is that everyone can see the changes done in real time and have access to those changes should they take over.

#### 3.	Collaborate

This sounds much easier than it is. When collaborating, you must be aware of people not speaking or voices being ignored. Take time to ensure everyone can navigate. If someone is not navigating, ensure it is not because they don’t know what to do. If at any point someone feels lost or out of touch with what is happening, stop and address that. This practice works best when the focus is on ensuring everyone knows how to do things rather than getting things done. Paradoxically, by not focusing on speed, you acquire more speed.

### Hot Tips and Tricks

* Optimize for learning.
  * Go at the speed of the slowest member.
  * Ensure everyone can explain the solution and why we will use it.
  * Take the opinion of the least qualified member when there is more than one opinion.
* Take frequent breaks; this high-bandwidth collaboration is tiring.
* Respect everyone’s voice/opinion.
* Look for when someone is not speaking.
* Start by rotating the driver on a time limit.
  * Go smaller than you think is reasonable and grow from there.
* Do not accept low amounts of collaboration. If collaboration is down, dig into why.
* Start with micro retros approximately every 20 minutes to tune the group communications.

### F.A.Q

#### Isn’t it more expensive to have everyone working on the same thing rather than individual things?

That depends. When collaboration is low, you only get a few benefits listed above. When collaboration is high, you gain all the benefits listed above. The question is, really, do the benefits outpace the cost? In my experience, if the collaboration is high, the answer has always been yes.

#### Doesn’t this form of work deteriorate into groupthink?

Again, that depends. If the group does not focus on learning or the collaboration deteriorates, then it can. Most often, when I see it deteriorating, it isn’t into groupthink so much as following the leader, where one voice drowns out the others.

#### How do I prevent lazy people from hiding within the work of a group?

This is a difficult question because there are a lot of things tied into this question. Let’s start by defining everyone’s responsibility in the group so we can then explain what it means to be a slacker within the group. Everyone within the mob should always be doing the following things in equal measure:

* Actively Collaborating.
* Explaining an idea.
* Taking a short mental break.
* Digesting information.
* Seeking understanding.
* Drawing attention to things within the group dynamics that need to be refined.

If anyone spends too much time in any of these modes, there is a problem with how the team functions. This behavior needs to be examined, and the team needs to determine what will change it. As for active bad actors, if everyone else tries to rotate through these modes, they will detect people who genuinely have no interest in contributing meaningfully. So, first, determine if the team is functioning optimally. Then, if they are, listen to the team. Otherwise, focus on getting the team members to cycle through these behaviors.

    

## Contributors ##

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/edf-re"><img src="https://avatars.githubusercontent.com/u/13739273?v=4?s=100" width="100px;" alt="EDF Renewables"/><br /><sub><b>EDF Renewables</b></sub></a><br /><a href="#financial-edf-re" title="Financial">💵</a></td>
      <td align="center" valign="top" width="14.28%"><a href="http://thermodynamicsofemotion.com/"><img src="https://avatars.githubusercontent.com/u/3875136?v=4?s=100" width="100px;" alt="Willem Larsen"/><br /><sub><b>Willem Larsen</b></sub></a><br /><a href="#ideas-willemlarsen" title="Ideas, Planning, & Feedback">🤔</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
    

<!-- GENERATED DOCUMENT! DO NOT EDIT! -->
    
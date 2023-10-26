
<!-- GENERATED DOCUMENT! DO NOT EDIT! -->
# XP Sumaries #
#### Quick Introductions to XP Practices ####

## Table Of Contents ##

- [Section 1: Introduction](#user-content-introduction)
- [Section 2: Test-Driven Development](#user-content-test-driven-development)
- [Section 3: Acceptance Test Driven Development](#user-content-acceptance-test-driven-development)
- [Section 4: Behavior-Driven Development](#user-content-behavior-driven-development)
- [Section 5: Ensemble or Mob Development](#user-content-ensemble-or-mob-development)
- [Section 6: Contributors](#user-content-contributors)

## Introduction ##

I was asked to write short summaries about Extreme Programming Practices and to make those summaries widely available. The target audience is anyone who wants a brief description. I will include resources in that description if people want to know more.
    

## Test-Driven Development ##

Also called TDD.

### Summary

Test-driven development is a development practice that focuses on using tests to define behavior and, therefore, the architecture of a software system incrementally. When doing Test-driven Development (TDD), the developer will write a test or a few tests before writing any implementation. They will then write the implementation to pass those tests. Once those tests pass, they will write one or a few additional tests for new functionality and repeat until the product is finished.

### Goal

Test-Driven Development focuses on design by forcing the design with the tests. If you cannot write tests that force the design, then the design is probably not needed.

### Benefits

* Forces a focus on what the program needs to do before code is written.
* Creates code that is easier to change as architecture constantly changes.
* Speeds up development in the late stages of a project.
* Reduces bugs by having a test suite that defines desired behavior.

### Guidance

#### 1.	Write a Guiding Test

The first test you write is intended to test that the test environment works. This will be something that checks true is equal to false, 1 is equal to 2, or something similarly inane. The idea is when you run the test, the framework detects that it fails. Once your test fails, correct it to be correct, e.g., true is equal to true. Now, your framework should show this success. Delete this test once it has correctly detected failure and success.

#### 2.	Write the Test(s) First

Focus on a single testable behavior the code should have. Each behavior focused on should be defined as small as possible. For instance, if we were coding the [FizzBuzz](https://en.wikipedia.org/wiki/Fizz_buzz) application, a single behavior would be that given 1, the application returns “1”. You would continue for each thinly sliced behavior until you cannot write a failing test.

#### 3.	Make the Test Pass

This part of the practice is counterintuitive. You use your best developer hat when creating tests and your worst when making them pass. When making a test pass, you want to write the most straightforward, least intelligent, and inane code that will work for all current test cases and nothing more. If you can make all current test cases pass with a hard-coded value, then do it.

If the implementation is wrong, prove it when you write your next test. Have the test fail because something was not considered.

Sometimes, to make the current test pass, you must re-architect what you did. But because you focus on small slices, that change will be less.

#### 4.	Refactor

Look over the code you wrote, and ask if this code have any unnecessary complexity. If so, remove it. The change you made to the code did you make a similar change with a previous test? Can you isolate that change using a design pattern or other practice? Clean up your code and ensure it is easy to read and work with.

#### 5.	Repeat
Start with step two and repeat until the product is done.

### Hot Tips and Tricks

#### Z.O.M.B.I.E.

ZOMBIE is a guide to help you know what to focus on and when.

* [Video](https://www.youtube.com/watch?v=dYM8HEacJgs)
* [Blog](https://blog.wingman-sw.com/tdd-guided-by-zombies)

#### Avoid Brittleness

Brittle tests are often caused by an insufficient design. If you must tie your tests to implementation details, this means that there is some design aspect that is missing. You may have to learn what that is to avoid the brittleness.

#### Practice on Toy Projects

TDD is a skill that needs practice.

### F.A.Q.

#### Can you use TDD in a legacy setting?

Yes, it is more complex and requires more skill, but it is possible. It often starts with writing tests for what is there first so you can safely refactor to something easier to change. I recommend starting with the book [Working Effectively with Legacy Code by Michael Feathers](https://a.co/d/9HelBB9).

#### Doesn’t it slow down development?

Yes, by about 15%. However, studies show that the reduction in bug handling more than makes up for that speed reduction. The total time of development can increase by 50% or more when considering time fixing bugs.

[Here](https://github.com/jason-kerney/CoachingResources#user-content-tdd-research) are several papers backing supporting that claim.

#### What is the investment cost to get started?

I would recommend taking a low-investment approach by finding small areas where you can gain a win without spending much time, even if it is a significant percentage-based time. In other words, if you have a change that would take 10 minutes, but you know you could do it with TDD after an hour of refactoring, then do it. Don’t spend days or multiple hours trying to make it work while learning. Each small change will make the environment more accessible to work with and help you learn the skill.

#### What is the difference between TDD and BDD?

Behavior-driven development focuses on the business domain language instead of technical jargon.

#### What is the difference between TDD and ATDD?

Acceptance test-driven development is test-driven development, with the first test cases being larger-scaled tests that verify the acceptance criteria of a feature. These acceptance tests are written before any implementation code.

    

## Acceptance Test Driven Development ##

Also called ATDD.

### Summary

Acceptance Test-Driven Development is a practice where high-level acceptance tests are written for a story before any code is written. The focus here is on the smallest functionality that can be considered deliverable even if the user would not consider it a complete “feature.”

### Goal

Acceptance Test-Driven Development aims to ensure a common understanding of a story’s intent and usage.

### Benefits

* Forces smaller slices for stories.
* Ensures everyone understands when a story is done.
* Frees up Product Owner (PO) time as, once the acceptance tests are written, the code is complete when the acceptance tests pass. There is no need for further PO testing.
* Creates a common language between PO and Developers that is specific enough for development.
* Ensures understandable acceptance criteria.

### Guidance

#### 1.	Keep stories small and easily definable.

For this to work, stories, on average, must have no more than four to five acceptance tests. It may make sense to have boundary conditions be a series of separate stories to simplify the testing.

#### 2.	PO writes the acceptance criteria in a language that facilitates testing.

Each acceptance criteria must be written as a series of steps to test the criteria and expected results. The behavior testing language [Gherkin](https://cucumber.io/docs/gherkin/reference/) can help with this. It uses a business-friendly language with a “Given,” “When,” and “Then” syntax.

Developers can often help get the steps at the right level of detail. The trick here is that it must be detailed enough for developers to understand, but it should not have every nitty-gritty detail.

#### 3.	Developers and PO work together to develop the tests.

As the functionality being tested does not yet exist, there will be different ideas for testing it. By bringing those ideas together, everyone will get a better idea of what the desired functionality is. The developers must agree that the test represents a reasonable expectation of how it could be executed, while the PO must approve that the test verifies the criteria.

#### 4.	Run the tests often.

The tests must be runnable and run often. If a Continuous Integration (CI) framework exists, these tests passing force a pull request or merge into main. If there is no CI framework, then the PO needs to be able to run it whenever they please. It is recommended they run it at least once a day.

When the test passes, the story is complete, and it is time to move to a different story.

### Hot Tips and Tricks

#### 1.	Focus on Communication and Shared Understanding.

The point of Acceptance Test-Driven Development is a shared understanding of what a story is supposed to do.

#### 2.	Keep it small.

The fewer Acceptance Criteria, the easier it is to write and verify tests. Try to define stories around one idea with very few criteria.

#### 3.	Acceptance tests do not replace other tests.

Acceptance tests are not as thorough as unit tests. They represent the spot-checking a PO might do to verify that the story works as the customer expected. Because of this, other tests are advised as well. This practice often supplements Test-Driven Development (TDD) quite well.

#### 4.	Use the whole team when writing tests.

Since Acceptance Tests are large, over-arching tests, different people may understand them differently. Using the whole team to design the tests gives you a shared understanding of what the story does.

#### 5.	Use Acceptance Test-Driven Development for Features

So far, this practice has been framed around stories. It is an incredible tool for story design and validation. But it can also be used for features. It has all the same benefits when used to define a feature. Defining small, distinct Acceptance Criteria for an Epic becomes more challenging, but there are huge advantages.

### F.A.Q.

#### How does this differ from Test-Driven Development?

Both are test-fist practices. TDD focuses on implementation and design. You will often have many more tests that come out of using it. In contrast, Acceptance Test-Driven Development focuses on communication and shared understanding.

#### How does this differ from Behavior-Driven Development?

Behavior-Driven Development (BDD) is about a strict focus on business language. It can be used with TDD or with Acceptance-Driven Development. The difference is when the executable test is written, can the PO, or another Business Domain Expert, read the test code and understand what it does?  If so, the code was most likely written with BDD.

    

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

### Hot Tips and Tricks

#### Use Tools

There are a few tools out there that can minimize the effort in using Behavior-Driven Development. These tools primarily reduce the work of translating the description into executable code. The most popular of these is [Gherkin](https://cucumber.io/docs/gherkin/reference/). Gherkin takes a very structured English description and makes it executable.

There are other tools also. Find the tool that works for your context to make your life easier.

#### Pair with Domain-Driven Development

Domain-Driven Development is a process where the domain of the problem trying to be solved is explored and mapped before development starts and incrementally as development continues. Since Domain-Driven Development is also focused on unifying the language around a domain, it pairs nicely with Behavior-Driven Development.

#### Behavior-Driven Development Takes Time to Learn

This practice takes time to learn and more time to master. The biggest problem developers face when starting down the path of BDD is that the test project can become unruly. This problem is caused by the developer not knowing how to develop cleanly in this new way of working. The developer needs to focus on the skills that allowed them to be successful and figure out how to apply them in this new context.

### F.A.Q.

#### How is BDD different from Test-Driven Development?

Both are a test-first approach. However, Behavior-Driven Development focuses on a common language and understanding. Test-Driven Development focuses on code architecture. It is possible to combine the two. You can do TDD while working in a customer-centric language. This has some real advantages, as it now allows a customer to look at the small details of what you develop and catch misunderstandings earlier.

#### How is BDD different from Acceptance Test-Driven Development?

Both are a test-first approach. However, Behavior-Driven Development focuses on a common language and understanding. Acceptance Test-Driven Development focuses on a shared understanding of the intent of a story. The two can be combined. You can do ATDD by working in a customer-centric language. This has the advantage the customer can understand the tests that verify the acceptance criteria. This will catch subtle errors that can be made between the definition of the acceptance test and the creation of the code for the acceptance test.

#### Do I have to use Gherkin or Another Specialty Tool?

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
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
    

<!-- GENERATED DOCUMENT! DO NOT EDIT! -->
    
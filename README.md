
<!-- GENERATED DOCUMENT! DO NOT EDIT! -->
# XP Sumaries #
#### Quick Introductions to XP Practices ####

## Table Of Contents ##

- [Section 1: Introduction](#user-content-introduction)
- [Section 2: Test Driven Development](#user-content-test-driven-development)
- [Section 3: Contributors](#user-content-contributors)
- [Section 4: Acceptance Test Driven Development](#user-content-acceptance-test-driven-development)

## Introduction ##

I was asked to write short summaries about Extreme Programming Practices and to make those summaries widely available. The target audience is anyone who wants a brief description. I will include resources in that description if people want to know more.
    

## Test Driven Development ##

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

[Video](https://www.youtube.com/watch?v=dYM8HEacJgs)
[Blog](https://blog.wingman-sw.com/tdd-guided-by-zombies)

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

    

<!-- GENERATED DOCUMENT! DO NOT EDIT! -->
    
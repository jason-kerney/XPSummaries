# Acceptance Test Driven Development (ATDD)

[Documents about XP Practices](./README.md)

## Summary

Acceptance Test-Driven Development is a practice where high-level acceptance tests are written for a story before any code is written. The focus here is on the smallest functionality that can be considered deliverable even if the user would not consider it a complete “feature.”

## Goal

Acceptance Test-Driven Development aims to ensure a common understanding of a story’s intent and usage.

## Benefits

* Forces smaller slices for stories.
* Ensures everyone understands when a story is done.
* Frees up Product Owner (PO) time as, once the acceptance tests are written, the code is complete when the acceptance tests pass. There is no need for further PO testing.
* Creates a common language between PO and Developers that is specific enough for development.
* Ensures understandable acceptance criteria.

## Guidance

### 1.	Keep stories small and easily definable.

For this to work, stories, on average, must have no more than four to five acceptance tests. It may make sense to have boundary conditions be a series of separate stories to simplify the testing.

### 2.	PO writes the acceptance criteria in a language that facilitates testing.

Each acceptance criteria must be written as a series of steps to test the criteria and expected results. The behavior testing language [Gherkin](https://cucumber.io/docs/gherkin/reference/) can help with this. It uses a business-friendly language with a “Given,” “When,” and “Then” syntax.

Developers can often help get the steps at the right level of detail. The trick here is that it must be detailed enough for developers to understand, but it should not have every nitty-gritty detail.

### 3.	Developers and PO work together to develop the tests.

As the functionality being tested does not yet exist, there will be different ideas for testing it. By bringing those ideas together, everyone will get a better idea of what the desired functionality is. The developers must agree that the test represents a reasonable expectation of how it could be executed, while the PO must approve that the test verifies the criteria.

### 4.	Run the tests often.

The tests must be runnable and run often. If a Continuous Integration (CI) framework exists, these tests passing force a pull request or merge into main. If there is no CI framework, then the PO needs to be able to run it whenever they please. It is recommended they run it at least once a day.

When the test passes, the story is complete, and it is time to move to a different story.

## Hot Tips and Tricks

### 1.	Focus on Communication and Shared Understanding.

The point of Acceptance Test-Driven Development is a shared understanding of what a story is supposed to do.

### 2.	Keep it small.

The fewer Acceptance Criteria, the easier it is to write and verify tests. Try to define stories around one idea with very few criteria.

### 3.	Acceptance tests do not replace other tests.

Acceptance tests are not as thorough as unit tests. They represent the spot-checking a PO might do to verify that the story works as the customer expected. Because of this, other tests are advised as well. This practice often supplements Test-Driven Development (TDD) quite well.

### 4.	Use the whole team when writing tests.

Since Acceptance Tests are large, over-arching tests, different people may understand them differently. Using the whole team to design the tests gives you a shared understanding of what the story does.

### 5.	Use Acceptance Test-Driven Development for Features

So far, this practice has been framed around stories. It is an incredible tool for story design and validation. But it can also be used for features. It has all the same benefits when used to define a feature. Defining small, distinct Acceptance Criteria for an Epic becomes more challenging, but there are huge advantages.

## F.A.Q.

### How does this differ from Test-Driven Development?

Both are test-fist practices. TDD focuses on implementation and design. You will often have many more tests that come out of using it. In contrast, Acceptance Test-Driven Development focuses on communication and shared understanding.

### How does this differ from Behavior-Driven Development?

Behavior-Driven Development (BDD) is about a strict focus on business language. It can be used with TDD or with Acceptance-Driven Development. The difference is when the executable test is written, can the PO, or another Business Domain Expert, read the test code and understand what it does?  If so, the code was most likely written with BDD.

[Documents about XP Practices](./README.md)
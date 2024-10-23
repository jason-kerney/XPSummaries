<!-- GENERATED DOCUMENT DO NOT EDIT! -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->

<!-- Compiled with doculisp (version 2.0.5) https://www.npmjs.com/package/doculisp -->

# Test-Driven Development #

### Also Known as TDD ###

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

Test-driven development is a development practice that focuses on using tests to define behavior and, therefore, the architecture of a software system incrementally. When doing Test-driven Development (TDD), the developer will write a test or a few tests before writing any implementation. They will then write the implementation to pass those tests. Once those tests pass, they will write one or a few additional tests for new functionality and repeat until the product is finished.

## Goal ##

Test-Driven Development focuses on design by forcing the design with the tests. If you cannot write tests that force the design, then the design is probably not needed.

## Benefits ##

* Forces a focus on what the program needs to do before code is written.
* Creates code that is easier to change as architecture constantly changes.
* Speeds up development in the late stages of a project.
* Reduces bugs by having a test suite that defines desired behavior.

## What are my responsibilities ##

### Coach ###

Give the team room to learn and practice. TDD is a skill that will take time to master. Help connect them with people who know how to do it.

### Development Team ###

Take time to learn it. Understand when you don’t know how to do it. Please do what you need to in order to meet expectations, but then come back to that scenario and learn from it. Remember, smaller steps are better.

## How do I go about it ##

<table style="border=none!important">
<tr><td width=30%></td><td width=40%></td><td width=30%></td></tr>
<tr>

<td>
    <img src="./images/tdd/pexels-pixabay-220147.jpg" >
</td>
<td colspan="2">

### 1.	Write a Guiding Test ###

The first test you write is intended to test that the test environment works. This will be something that checks true is equal to false, 1 is equal to 2, or something similarly inane. The idea is when you run the test, the framework detects that it fails. Once your test fails, correct it to be correct, e.g., true is equal to true. Now, your framework should show this success. Delete this test once it has correctly detected failure and success.

</td>
</tr>

<tr>
<td colspan="2">

### 2.	Write the Test(s) First ###

Focus on a single testable behavior the code should have. Each behavior focused on should be defined as small as possible. For instance, if we were coding the [FizzBuzz](https://en.wikipedia.org/wiki/Fizz_buzz) application, a single behavior would be that given 1, the application returns “1”. You would continue for each thinly sliced behavior until you cannot write a failing test.

</td>
<td width=30%>
    <img src="./images/tdd/pexels-zachariah-garrison-1959841.jpg" >
</td>
</tr>

<td>
    <img src="./images/tdd/pexels-davis-sánchez-1727004.jpg" >
</td>
<td colspan="2">

### 3.	Make the Test Pass ###

This part of the practice is counterintuitive. You use your best developer hat when creating tests and your worst when making them pass. When making a test pass, you want to write the most straightforward, least intelligent, and inane code that will work for all current test cases and nothing more. If you can make all current test cases pass with a hard-coded value, then do it.

If the implementation is wrong, prove it when you write your next test. Have the test fail because something was not considered.

Sometimes, to make the current test pass, you must re-architect what you did. But because you focus on small slices, that change will be less.

</td>
</tr>

<tr>
<td colspan="2">

### 4.	Refactor ###

Look over the code you wrote, and ask if this code have any unnecessary complexity. If so, remove it. The change you made to the code did you make a similar change with a previous test? Can you isolate that change using a design pattern or other practice? Clean up your code and ensure it is easy to read and work with.

</td>
<td width=30%>
    <img src="./images/tdd/pexels-liliana-drew-9462302.jpg" >
</td>
</tr>

<td>
    <img src="./images/tdd/pexels-suzy-hazelwood-3631711.jpg" >
</td>
<td colspan="2">

### 5.	Repeat ###

Start with step two and repeat until the product is done.

</td>
</tr>

</table>

## Hot Tips and Tricks ##

### Z.O.M.B.I.E. ###

ZOMBIE is a guide to help you know what to focus on and when.

* [Video](https://www.youtube.com/watch?v=dYM8HEacJgs)
* [Blog](https://blog.wingman-sw.com/tdd-guided-by-zombies)

### Avoid Brittleness ###

Brittleness refers to test cases that are easily broken and tend to fail without any actual errors in the code. It is important to address brittleness in tests to ensure their reliability and effectiveness.

1. Test Outcomes, Not Implementations: One common cause of brittleness is when tests focus on implementation details rather than desired outcomes. This often occurs when Mock Objects are misused to verify precise interactions with objects. Instead, tests should primarily focus on whether the correct results are obtained, rather than how the task is performed. While there may be valid scenarios for testing implementation details, they should be limited and isolated to minimize brittleness.
2. Loose Coupling: Brittleness can also arise when objects are tightly coupled, having excessive knowledge of each other's internal workings. This leads to complex, hard-to-understand, and interdependent code. Such dependencies undermine the stability of tests, resulting in brittleness. To mitigate this, strive for loose coupling between objects, where each object has minimal knowledge of others, promoting modularity and maintainability.
3. Adhere to S.O.L.I.D. Principles: Another common cause of brittleness is the violation of S.O.L.I.D. design principles. While achieving complete adherence to these principles may be rare, it is crucial to minimize their violations. Neglecting S.O.L.I.D. principles introduces unexpected complexity into the system, which undermines the value of tests. Therefore, make an effort to align your code architecture with these principles, enhancing the stability and resilience of your tests.
4. Evaluate Code Architecture: If you encounter brittleness in your tests, it is essential to analyze the underlying code architecture. Look for design flaws or deficiencies that contribute to the brittleness. By examining the architecture, you can identify specific areas that require improvement to reduce brittleness in your tests.

Brittleness in tests often stems from design-related issues. By focusing on test outcomes, promoting loose coupling, adhering to S.O.L.I.D. principles, and evaluating code architecture, you can effectively mitigate brittleness and enhance the reliability of your TDD process.

### Practice on Toy Projects ###

TDD is a skill that needs practice.

## F.A.Q. ##

### Can you use TDD in a legacy setting? ###

Yes, it is more complex and requires more skill, but it is possible. It often starts with writing tests for what is there first so you can safely refactor to something easier to change. I recommend starting with the book [Working Effectively with Legacy Code by Michael Feathers](https://a.co/d/9HelBB9).

### Doesn’t it slow down development? ###

Yes, by about 15%. However, studies show that the reduction in bug handling more than makes up for that speed reduction. The total time of development can increase by 50% or more when considering time fixing bugs.

[Here](https://github.com/jason-kerney/CoachingResources#user-content-tdd-research) are several papers supporting that claim.

### What is the investment cost to get started? ###

I would recommend taking a low-investment approach by finding small areas where you can gain a win without spending much time, even if it is a significant percentage-based time. In other words, if you have a change that would take 10 minutes, but you know you could do it with TDD after an hour of refactoring, then do it. Don’t spend days or multiple hours trying to make it work while learning. Each small change will make the environment more accessible to work with and help you learn the skill.

### What is the difference between TDD and BDD? ###

Behavior-driven development focuses on the business domain language instead of technical jargon.

### What is the difference between TDD and ATDD? ###

Acceptance Test-Driven Development is Test-Driven Development, with the first test cases being larger-scaled tests that verify the acceptance criteria of a feature. These acceptance tests are written before any implementation code.

## Other Resources ##

[Agile in Practice: Test Driven Development](https://www.youtube.com/watch?v=uGaNkTahrIw)(YouTube 3:32)

[Test Driven Development: By Example 1st Edition (Amazon Book Link)](https://a.co/d/1kCNdcz)

[James W. Grenning - TDD Guided by ZOMBIES](www.youtube.com/watch?v=dYM8HEacJgs)(YouTube 17:46)

[TDD Guided by Zombies by James W. Grenning](https://blog.wingman-sw.com/tdd-guided-by-zombies)(Article)

[Working Effectively with Legacy Code by Michael Feathers](https://a.co/d/9HelBB9)(Amazon Book Link)

[Research Papers on TDD](https://github.com/jason-kerney/CoachingResources#user-content-tdd-research)(GitHub Site)

## Back To Other Documents ##

[Documents about XP Practices](README.md)

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->
<!-- GENERATED DOCUMENT DO NOT EDIT! -->
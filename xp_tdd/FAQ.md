<!--(dl
(section-meta
    (title F.A.Q.))
)-->

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
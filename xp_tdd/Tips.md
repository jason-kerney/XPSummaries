<!--(dl
(section-meta
    (title Hot Tips and Tricks))
)-->

<!-- (dl (# Z.O.M.B.I.E.)) -->

ZOMBIE is a guide to help you know what to focus on and when.

* [Video](https://www.youtube.com/watch?v=dYM8HEacJgs)
* [Blog](https://blog.wingman-sw.com/tdd-guided-by-zombies)

<!-- (dl (# Avoid Brittleness)) -->

Brittleness refers to test cases that are easily broken and tend to fail without any actual errors in the code. It is important to address brittleness in tests to ensure their reliability and effectiveness. 

1. Test Outcomes, Not Implementations: One common cause of brittleness is when tests focus on implementation details rather than desired outcomes. This often occurs when Mock Objects are misused to verify precise interactions with objects. Instead, tests should primarily focus on whether the correct results are obtained, rather than how the task is performed. While there may be valid scenarios for testing implementation details, they should be limited and isolated to minimize brittleness.
2. Loose Coupling: Brittleness can also arise when objects are tightly coupled, having excessive knowledge of each other's internal workings. This leads to complex, hard-to-understand, and interdependent code. Such dependencies undermine the stability of tests, resulting in brittleness. To mitigate this, strive for loose coupling between objects, where each object has minimal knowledge of others, promoting modularity and maintainability.
3. Adhere to S.O.L.I.D. Principles: Another common cause of brittleness is the violation of S.O.L.I.D. design principles. While achieving complete adherence to these principles may be rare, it is crucial to minimize their violations. Neglecting S.O.L.I.D. principles introduces unexpected complexity into the system, which undermines the value of tests. Therefore, make an effort to align your code architecture with these principles, enhancing the stability and resilience of your tests.
4. Evaluate Code Architecture: If you encounter brittleness in your tests, it is essential to analyze the underlying code architecture. Look for design flaws or deficiencies that contribute to the brittleness. By examining the architecture, you can identify specific areas that require improvement to reduce brittleness in your tests.

Brittleness in tests often stems from design-related issues. By focusing on test outcomes, promoting loose coupling, adhering to S.O.L.I.D. principles, and evaluating code architecture, you can effectively mitigate brittleness and enhance the reliability of your TDD process.

<!-- (dl (# Practice on Toy Projects)) -->

TDD is a skill that needs practice.
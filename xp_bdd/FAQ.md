<!--(dl
(section-meta
    (title F.A.Q.))
)-->

<!-- (dl (# How is BDD different from Test-Driven Development?)) -->

Both are a test-first approach. However, Behavior-Driven Development focuses on a common language and understanding. Test-Driven Development focuses on code architecture. It is possible to combine the two. You can do TDD while working in a customer-centric language. This has some real advantages, as it now allows a customer to look at the small details of what you develop and catch misunderstandings earlier.

<!-- (dl (# How is BDD different from Acceptance Test-Driven Development?)) -->

Both are a test-first approach. However, Behavior-Driven Development focuses on a common language and understanding. Acceptance Test-Driven Development focuses on a shared understanding of the intent of a story. The two can be combined. You can do ATDD by working in a customer-centric language. This has the advantage the customer can understand the tests that verify the acceptance criteria. This will catch subtle errors that can be made between the definition of the acceptance test and the creation of the code for the acceptance test.

<!-- (dl (# Do I have to use Cucumber or Another Specialty Tool?)) -->

Maybe. You can make this work with any test framework in most programming languages. The downside is you will do much more work to get the benefits.

<!-- (dl (# Can I do BDD without a customer representative?)) -->

Sort of. If you do not have a customer representative reading your tests, then you have no validation that the tests match the business domain.
<!--(dl
(section-meta
    (title How do I go about it))
)-->

<table style="border=none!important">
<tr><td width=30%></td><td width=40%></td><td width=30%></td></tr>
<tr>

<!-- 1st Item -->
<td>
    <img src=./images/atdd/pexels-nubia-navarro-(nubikini)-1522186.jpg >
</td>
<td colspan="2">

<!-- (dl (# 1. Keep stories small and easily definable.)) -->

For this to work, stories, on average, must have no more than four to five acceptance tests. It may make sense to have boundary conditions be a series of separate stories to simplify the testing.

</td>
</tr>

<!-- 2nd Item -->
<tr>
<td colspan="2">

<!-- (dl (# 2. PO writes the acceptance criteria in a language that facilitates testing.)) -->

Each acceptance criteria must be written as a series of steps to test the criteria and expected results. The behavior testing language [Gherkin](https://cucumber.io/docs/gherkin/reference/) can help with this. It uses a business-friendly language with a “Given,” “When,” and “Then” syntax.

Developers can often help get the steps at the right level of detail. The trick here is that it must be detailed enough for developers to understand, but it should not have every nitty-gritty detail.

</td>
<td width=30%>
    <img src=././images/atdd/pexels-suzy-hazelwood-1153929.jpg >
</td>
</tr>

<!-- 3rd Item -->
<tr>
<td width=30%>
    <img src=././images/atdd/pexels-pixabay-38631.jpg >
</td>
<td colspan="2">

<!-- (dl (# 3. Developers and PO work together to develop the tests.)) -->

As the functionality being tested does not yet exist, there will be different ideas for testing it. By bringing those ideas together, everyone will get a better idea of what the desired functionality is. The developers must agree that the test represents a reasonable expectation of how it could be executed, while the PO must approve that the test verifies the criteria.

</td>
</tr>

<!-- 4th Item -->
<tr>
<td colspan="2">

<!-- (dl (# 4. Run the tests often.)) -->

The tests must be runnable and run often. If a Continuous Integration (CI) framework exists, these tests passing force a pull request or merge into main. If there is no CI framework, then the PO needs to be able to run it whenever they please. It is recommended they run it at least once a day.

When the test passes, the story is complete, and it is time to move to a different story.

</td>
<td width=30%>
    <img src=././images/atdd/pexels-jeshootscom-442584.jpg >
</td>
</tr>
</table>
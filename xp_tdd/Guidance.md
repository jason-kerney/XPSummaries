<!--bl
(filemeta
    (title "Guidance"))
/bl-->

<table style="border=none!important">
<tr><td width=30%></td><td width=40%></td><td width=30%></td></tr>
<tr>

<!-- 1st Item -->
<td>
    <img src="./imgages/tdd/pexels-pixabay-220147.jpg" >
</td>
<td colspan=2>

### 1.	Write a Guiding Test ###

The first test you write is intended to test that the test environment works. This will be something that checks true is equal to false, 1 is equal to 2, or something similarly inane. The idea is when you run the test, the framework detects that it fails. Once your test fails, correct it to be correct, e.g., true is equal to true. Now, your framework should show this success. Delete this test once it has correctly detected failure and success.

</td>
</tr>

<!-- 2nd Item -->
<tr>
<td colspan=2>

### 2.	Write the Test(s) First ###

Focus on a single testable behavior the code should have. Each behavior focused on should be defined as small as possible. For instance, if we were coding the [FizzBuzz](https://en.wikipedia.org/wiki/Fizz_buzz) application, a single behavior would be that given 1, the application returns “1”. You would continue for each thinly sliced behavior until you cannot write a failing test.

</td>
<td width=30%>
    <img src="./imgages/tdd/pexels-zachariah-garrison-1959841.jpg" >
</td>
</tr>


<!-- 3rd Item -->
<td>
    <img src="./imgages/tdd/pexels-davis-sánchez-1727004.jpg" >
</td>
<td colspan=2>

### 3.	Make the Test Pass ###

This part of the practice is counterintuitive. You use your best developer hat when creating tests and your worst when making them pass. When making a test pass, you want to write the most straightforward, least intelligent, and inane code that will work for all current test cases and nothing more. If you can make all current test cases pass with a hard-coded value, then do it.

If the implementation is wrong, prove it when you write your next test. Have the test fail because something was not considered.

Sometimes, to make the current test pass, you must re-architect what you did. But because you focus on small slices, that change will be less.

</td>
</tr>

<!-- 4th Item -->
<tr>
<td colspan=2>

### 4.	Refactor ###

Look over the code you wrote, and ask if this code have any unnecessary complexity. If so, remove it. The change you made to the code did you make a similar change with a previous test? Can you isolate that change using a design pattern or other practice? Clean up your code and ensure it is easy to read and work with.

</td>
<td width=30%>
    <img src="./imgages/tdd/pexels-liliana-drew-9462302.jpg" >
</td>
</tr>

<!-- 3rd Item -->
<td>
    <img src="./imgages/tdd/pexels-suzy-hazelwood-3631711.jpg" >
</td>
<td colspan=2>

### 5.	Repeat ###

Start with step two and repeat until the product is done.

</td>
</tr>

</table>
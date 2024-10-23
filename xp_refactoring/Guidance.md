<!--(dl
(section-meta
    (title How do I go about it))
)-->

<!-- markdownlint-disable -->
<table style="border=none!important">
<tr><td width=30%></td><td width=40%></td><td width=30%></td></tr>
<tr>

<!-- 1st Item -->
<td>
    <img src="./images/refactoring/pexels-kollipara-hemanth-18366881.jpg" >
</td>
<td colspan="2">
<!-- markdownlint-restore -->

<!-- (dl (# 1. Write Automated Tests)) -->

It is not refactoring if external behavior changes. There are only two ways that might ensure that this is true. The first is to have a comprehensive suite of automated tests. The second is to use provable refactorings.
A provable refactoring is one that can be proven mathematically to be safe. This is an advanced topic and out of scope for this body of work.

With that I will focus on automated tests. I understand that automated tests do not actually ensure that bugs are not generated but they do reduce the surface area where a bug can occur. The better your tests, the smaller the surface area. This becomes a balancing act between time used in testing and how much it reduces the risk. You are on average better if you start with TDD, but that is not necessary.

<!-- markdownlint-disable -->
</td>
</tr>

<!-- 2nd Item -->
<tr>
<td colspan="2">
<!-- markdownlint-restore -->

<!-- (dl (# 2. Learn about Code Smells and When to Remove Them)) -->

Code Smells are micro-architectural errors that will always exist within code. Learning what they are and how to get rid of them is worthwhile. There is research that suggests that denser the code is with code smells the more likely there is a bug.

<!-- (dl (## The Rule of Three)) -->

Learning when to remove them is an art. A handy rule of thumb is called “The Rule of Three.” It says that a code smell gets to live until one of two conditions are true:

1. The code smell is replicated 3 times.
2. Three or more code smells can be removed with the application of a single pattern.

The problem here is that this is a rule of thumb. It should not be followed blindly. There will be times when it makes since to remove a code smell before it qualifies “The Rule of Three.” There will be other times when it will not make since to remove a code smell just because it qualifies the rule.

<!-- (dl (## Paving the Way)) -->

Another common way to decide when to remove smells is to wait until you have a change in the relevant area. Then you look at what it would take to make that change easier. Sometimes having the smells actually makes the change easier because they have multiple ways to be removed, and one of those ways will benefit what you are currently doing.

Other times the smells will make changing the code harder, and so you need to removed them first so that the desired change is easier to make.

<!-- markdownlint-disable -->
</td>
<td width=30%>
    <img src="./images/refactoring/pexels-amine-km-5712211.jpg" >
</td>
</tr>

<!-- 3rd Item -->
<td>
    <img src="./images/refactoring/pexels-samuel-figueroa-2106249.jpg" >
</td>
<td colspan="2">
<!-- markdownlint-restore -->

<!-- (dl (# 3. Learn SOLID development)) -->

SOLID is an acronym that is used to define well designed software. It stands for:

* **S**ingle Responsibility Principle
* **O**pen Closed Principle
* **L**iscov Substitution Principle
* **I**nterface Segregation Principle
* **D**ependency Inversion Principle

Though, this was originally defined in terms of object-oriented code, the principles have been translated into both Functional Programming and even Procedural Programming as well as others. These principles can guide us to know when to refactor. When we are in violation of a single principle, and that violation is making the code difficult to change, then we refactor that code.

<!-- markdownlint-disable -->
</td>
</tr>

<!-- 4th Item -->
<tr>
<td colspan="2">
<!-- markdownlint-restore -->

<!-- (dl (# 4. Refactor to Understand)) -->

An often-overlooked practice in refactoring is that it can be used to gain insight into a piece of code you are about to change. Here you will need to make change to a piece of code you do not understand, and so you will start to tease meaning out of it by doing refactorings. You do this until you understand enough to make your change, and you have made the change easier to make.

<!-- markdownlint-disable -->
</td>
<td width=30%>
    <img src="./images/refactoring/pexels-oladimeji-ajegbile-2696299.jpg" >
</td>
</tr>
</table>
<!-- markdownlint-restore -->

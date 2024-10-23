<!--(dl
(section-meta
    (title F.A.Q.))
)-->

### What is a "Provable" Refactoring? ###

I will provide a link to an article.

### Where do I start? ###

“Pave the Way” is one of the best techniques to know where to start. It allows you to focus on accomplishing a goal and narrows the view of what to work on.

The second-best place to start, is cleaning up a change you just made. This is the inverse of “Pave the Way” as the focus is now that things work let’s make it a little better.

### How do I know when to Stop? ###

Knowing when to stop initially seems as daunting as knowing when to start. Once you get familiar with code smells you will always see them. It is nearly impossible to make code 100% clean. The trick here is staying focused, here are a few guidelines to help:

1.	Keep to small refactorings that can be timeboxed.
2.	Refactor with intent to accomplish something else, aka Pave the Way.
3.	Keep to the rule of Three.


### How do I find the time? ###

If you are worried about how you find the time, you are thinking too big. Remember to be considered a refactoring you must be as sure as possible that you do not change external behavior. The best way to ensure you don’t change external behavior is to focus on small changes. Small changes over time can have large effects to the quality of your code base. I recommend that you work refactoring in as part of any change you do.

Do something before the change that makes your change easier. Maybe then tackle one or two items in the same area. Commit these changes separately from the change you were there to make in the first place. This makes life easier before starting.

Then, as you make changes look for where you can improve what you just did. Clean up a little. This will go a long way to ensure that the code base’s quality at least remains the same. If done in conjunction with the initial clean up, then you guarantee that the code base’s quality is improving every time you touch it.

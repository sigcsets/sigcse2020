---
layout: default
title: "Author Guidelines: Nifty Assignments"
showTitle: true
---
{% include submissiondetails.html plural="Nifty Assignments" %}

## What are Nifty Assignments?

The [Nifty Assignments project](http://nifty.stanford.edu/) gathers great CS assignments to make their ideas and materials freely available for the CSE community.  Do you have a great assignment you would like to share with other educators? We'd love to have you apply to Nifty Assignments!

**Proposals undergo review but not blind review.**

## How Should The Proposal Be Formatted?

Nifty Assignment proposals are submitted as a zip archive containing an overview web page and a directory of assignment materials. 

Gather the materials from your assignment. Both student-facing and instructor-use materials may be appropriate. For example:

* The assignment handout given to students (PDF or HTML)
* Sample data files
* Starter and support code files
* Autograder tools and/or model grading rubric
* Runnable demo application

Prepare a draft of the web page for your assignment, including the table of metadata described below. The purpose of the web page is to introduce the assignment to another educator. You can view web pages for past Nifty Assignments on the [Nifty Assignments](http://nifty.stanford.edu/) archive as examples.

Organize your submission in a directory with your name and the name of the assignment (e.g. "parlante-namesurfer") and your web page as the index.html. Add supporting materials to the directory and link them from your index: handouts, sample application, etc. Please use relative links, so we can move the directory around and it all still works. It is not required that your directory be in final form to apply. The reviewers are evaluating the quality of the assignment itself and its applicability to the SIGCSE community, not the details of the presentation at this stage.

**The following table of metadata about your assignment should be included in your web page.** This information is used by the reviewers to evaluate the proposal and by instructors considering adopting the assignment.

* What is so great about this assignment?
* What niche/student is it suited for (CS1, CS2, advanced, easy, ...)?
* What does it teach?
* How hard is it?
* How long does it take?
* What does it depend on?
* What are its strengths and weaknesses?
* Are there any lessons on assignment craft in general that can be drawn from the assignment?

Here's an example for the Random Sentence Generator assignment:

 
| Summary | Random Sentence Generator -- build a sort of grammar structure in memory -- lots of uses of pointers, collections, and hashing. Then use a simple recursion over that structure to generate random output. |
| Topics | A neat application of recursion and pointer-intensive data structures. |
| Audience | Appropriate for CS2 or a later course. |
| Difficulty| This is an intermediate to advanced assignment, taking 1 or 2 weeks for a CS2 student.|
|Strengths| The great strength of this assignment is that the grammars and their output can be quite funny. Also, the data structure and the recursion are moderately complex but neat. Students like this assignment.|
| Weaknesses|Some parsing is required to build the grammar, which is not that fun. Also, this is not a concise, focused pointer/recursion problem. It has more heft to it.|
|Dependencies|Requires and understanding of pointers, recursion, and enough sophistication to deal with a data structure with 2 or 3 layers to it. Works fine in many languages. Hashing may or may not be used. The data structure has a natural map/collection structure, so using library classes can make it easier.|
|Variants|Because there are quite a few collections in the RSG, we have used it as a nice driver for students to implement their own collection that is instantiated in several places to build the RSG.|

Please see [Info about the Nifty Project](http://nifty.stanford.edu/info.html) for more information about the history of Nifty, the archive of previous Nifty assignments, and answers to frequently asked questions.

If your assignment is accepted, you will need to:

* Finalize your assignment web page and its various materials.
* Prepare a very short blurb for the proceedings.
* Attend the SIGCSE Symposium to present your assignment at the Nifty session (10-15 minutes).
* Your materials will be widely distributed for free on the web (although you may retain copyright), so you will need to be comfortable with that.

## How Do I Submit My Proposal

{% include nifty-submission-block.html %}

{% include presenter-warning.html %}

{% include submission-questions category="Nifty Assignments" %}

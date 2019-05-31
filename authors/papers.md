---
layout: default
title: "Author Guidelines: Papers"
showTitle: true
---

{% include submissiondetails.html plural="Papers" %}

## SIGCSE Technical Symposium Paper Types

Papers describe an educational research project, classroom experience, teaching technique, curricular initiative, or pedagogical tool. All papers should explicitly state their motivating questions, relate to relevant literature, and contain an analysis of the effectiveness of the interventions. Initial submissions must be anonymous. Note that an **abstract submission is required for all papers** and it is due a week before the full paper is due.

**Please ensure that you submit your paper to the correct paper track. Papers will be reviewed for the track they are submitted to and will not be moved between tracks.**

* **CS Education Research** papers should adhere to rigorous standards, describing hypotheses, methods, and results as is typical for research studies. These normally focus on topics relevant to computing education with emphasis on educational goals and knowledge units/topics relevant to computing education with statistical rigor; methods or techniques in computing education; evaluation of pedagogical approaches; and studies of the many different populations that are engaged in computing education, including (but not limited to) students, instructors, and issues of gender, diversity, and underrepresentation.

* **Experience Reports and Tools** papers should carefully describe a computer science education intervention and its context, and provide a rich reflection on what worked, what didn’t, and why. This track accepts experience reports, teaching techniques, and pedagogical tools. All papers in this track should provide enough detail so that others could adopt the new innovation.

* **Curricula Initiatives** papers should describe new curricula, programs, and degrees, the motivating context before the new initiative was undertaken, what it took to put the initiative into place, what the impact has been, and suggestions for others wishing to adopt it. This track may also include position papers, which are meant to engender fruitful academic discussion by presenting a defensible opinion about a CS education topic, substantiated with evidence.

### Paper Resources
There are many resources for writing high quality papers for submission to the SIGCSE Technical Symposium.  We encourage authors to read and evaluate papers from prior SIGCSE Technical Symposium, especially those designated as *best papers*, which were selected both due to content and high quality reporting.  Authors will also likely find the [paper review guidelines](..//reviewers/paper-review-guidelines.html) beneficial for identifying how reviewers will assess papers for each track.   We have linked in additional resources that you may find useful as you write your papers, especially computer science education research papers.

* [Writing a research question (csedresearch.org)](https://csedresearch.org/write-a-research-question/)
* [Reporting Tips (csedresearch.org)](https://csedresearch.org/guides/)
* [Checklist for Research Articles (csedresearch.org)](https://csedresearch.org/check-articles/)
* [Evaluation Instruments (csedresearch.org)](https://csedresearch.org/evaluation-instruments/)

### Paper Topics

<div class = "alert alert-info" style="margin-top: 23px">
    <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>
     We have added a topics category for <em>methods</em>. If you are submitting a CS Education Research paper, you are strongly encouraged to select at least one methods topic. We will be asking reviewers to select methods topics they are best able to review to provide better matches between papers and reviewers. 
</div>

<div class="row">
  <div class="col-md-3 col-md-offset-1">
    <strong>Computing Topics</strong>
    <ul>
    {% for type in site.data.computingtopics %}
      <li>{{type}}</li>
    {% endfor %}
    </ul>
	
  </div>
  <div class="col-md-3 col-md-offset-1">
    <strong>Education and Experience Topics</strong>
    <ul>
    {% for type in site.data.experiencetopics %}
      <li>{{type}}</li>
    {% endfor %}
    </ul>
	<strong>Methods Topics</strong>
    <ul>
    {% for type in site.data.methodtopics %}
      <li>{{type}}</li>
    {% endfor %}
    </ul>
  </div>
  <div class="col-md-3 col-md-offset-1">
    <strong>Curriculum Topics</strong>
    <ul>
    {% for type in site.data.curriculumtopics %}
      <li>{{type}}</li>
    {% endfor %}
    </ul>
  </div>
</div>


<!-- {% for type in site.data.topicareas %}
  {% cycle 'add rows': '<div class="row" style="padding-bottom: 10px; ">', nil, nil %}
    <div class="col-md-3 col-md-offset-1">
      <small>{{type}}</small>
    </div>
  {% cycle 'close rows': nil, nil, '</div>' %}
{% endfor %}
{% cycle 'close rows': nil, '</div>', '</div>' %} -->

## Details about your abstract

Your abstract can be up to 250 words and **must be submitted by the paper abstract deadline**.  There are no formatting requirements for the abstract. When you log in to submit the abstract, you may paste the abstract text into the form field. The abstract submission is required if you want your paper to be submitted on **{{site.data.cfp.round0.date}}**.

The abstract helps reviewers bid for papers that they are qualified and interested in reviewing.  To help the bidding and reviewing process, please submit an abstract that is as close to the finished version as possible.  The Program Chairs reserve the right to desk reject abstracts that do not contain content that can help a reviewer during bidding.

## How Should The Paper Be Formatted?

Authors must submit ONLY an anonymized version of the paper. The goal of the anonymized version is to, as much as possible, allow the author(s) of the paper an unbiased review. The anonymized version should have ALL mentions of the authors removed (including author’s names and affiliation plus identifying information within the body of the paper such as websites or related publications). Self-citations need not be removed if they are worded so that the reviewer doesn’t know if the writer is citing themselves. That is, instead of writing “We reported on our first experiment in 2017 in a previous paper [1]”, the writer might write “In 2017, an initial experiment was done in this area as reported in [1].

If the paper is accepted for the conference and for publication, authors will be asked to complete a camera-ready copy that will include all appropriate author names, citations, and references.

The paper is limited to a maximum of {{site.data.cfp.details[plural].limits}} and must adhere to ACM's publication guidelines:

<div class="text-center" style="margin-top: 10px; margin-bottom: 10px;">
<a href="{{site.data.publishing.acmpubguidelines}}">Formatting requirements, MS Word template, and LaTeX template</a>
</div>

SIGCSE 2020 is NOT participating in the new ACM workflow, template, and production system.  *Word Authors*, please use the Interim Tempalte. *LaTex Authors*, please use the official ACM Master with the `ACM_SigConf` template.

If your paper is accepted you will have a chance to modify your publication version before it is published.

## How Do I Submit My Paper?

{% include generic-submission-block.html ispaper="true" %}

{% include presenter-warning.html kind = "paper" %}

{% include submission-questions category="Program Co-Chair" %}


---
layout: default
title: "Author Guidelines: Papers"
showTitle: true
---

{% include submissiondetails.html plural="Papers" %}

## SIGCSE 2019 Paper Types

Papers describe an educational research project, classroom experience, teaching technique, curricular initiative, or pedagogical tool. All papers should explicitly state their motivating questions, relate to relevant literature, and contain an analysis of the effectiveness of the interventions. Initial submissions must be anonymous. Note that an ABSTRACT SUBMISSION is required for all papers and it is due a week before the full paper is due.

**Please ensure that you submit your paper to the correct paper track. Papers will be reviewed for the track they are submitted to and will not be moved between tracks.**

* **CS Education Research** papers should adhere to rigorous standards, describing hypotheses, methods, and results as is typical for research studies. These normally focus on topics relevant to computing education with emphasis on educational goals and knowledge units/topics relevant to computing education with statistical rigor; methods or techniques in computing education; evaluation of pedagogical approaches; and studies of the many different populations that are engaged in computing education, including (but not limited to) students, instructors, and issues of gender, diversity, and underrepresentation.

* **Experience Reports and Tools** papers should carefully describe a computer science education intervention and its context, and provide a rich reflection on what worked, what didn’t, and why. This track accepts experience reports, teaching techniques, and pedagogical tools. All papers in this track should provide enough detail so that others could adopt the new innovation.

* **Curricula Initiatives** papers should describe new curricula, programs, and degrees, the motivating context before the new initiative was undertaken, what it took to put the initiative into place, what the impact has been, and suggestions for others wishing to adopt it. This track may also include position papers, which are meant to engender fruitful academic discussion by presenting a defensible opinion about a CS education topic, substantiated with evidence.

<div class = "alert alert-info" style="margin-top: 23px">
    <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>
     We are particularly interested in Curricula Initiatives that highlight the 50th SIGCSE Technical Symposium.  Please check the option on the submission form if your Curricula Initiatives paper is related to the 50th.
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
    {% for type in site.data.methodstopics %}
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

Your abstract can be up to 250 words and **must be submitted by the paper abstract deadline**.  There are no formatting requirements for the abstract. When you log in to submit the abstract, you may paste the abstract text into the form field. The abstract submission is required if you want your paper to be submitted on **{{site.data.cfp.track1.date}}**.

The abstract helps reviewers bid for papers that they are qualified and interested in reviewing.  To help the bidding and reviewing process, please submit an abstract that is as close to the finished version as possible.

## How Should The Paper Be Formatted?


Authors must submit ONLY an anonymized version of the paper. The goal of the anonymized version is to, as much as possible, allow the author(s) of the paper an unbiased review. The anonymized version should have ALL references to the authors removed (including author’s names and affiliation plus identifying information within the body of the paper such as websites or related publications). Self-citations need not be removed if they are worded so that the reviewer doesn’t know if the writer is citing themselves. That is, instead of writing “We reported on our first experiment in 2017 in a previous paper [1]”, the writer might write “In 2017, an initial experiment was done in this area as reported in [1].

If the paper is accepted for the conference and for publication, authors will be asked to complete a camera-ready copy that will include all appropriate author names, citations, and references.

The paper is limited to a maximum of {{site.data.cfp.details[plural].limits}} and must adhere to ACM's publication guidelines:

<div class="text-center" style="margin-top: 10px; margin-bottom: 10px;">
<a href="{{site.data.publishing.acmpubguidelines}}">Formatting requirements, MS Word template, and LaTeX template</a>
</div>

Please note that there are updated proceedings templates as of 2017.  Make sure you are using updated versions of the template.  We are using the `ACM_SigConf` template.

If your paper is accepted you will have a chance to modify your publication version before it is published.

## How Do I Submit My Paper?

{% include generic-submission-block.html ispaper="true" %}

{% include presenter-warning.html kind = "paper" %}

{% include submission-questions category="Program Co-Chair" %}


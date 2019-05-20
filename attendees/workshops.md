---
title: Workshops
showTitle: true
---

{% comment %}
There are two pages for workshops, currently---one for the YAML structure, 
which was used in previous SIGCSEs, and one for the CSV structure, which
is what we got in 2019. Fortunately, Jekyll eats both.

number,easychair,date,authors,title,advertisement,abstract
{% endcomment %}

{% assign day = "NOPENOPENOPE" %}

<ul>
{% for ws in site.data.workshops-2019-1 %}
{% if ws.date contains day %}
<li><a href="#{{ws.number}}">{{ws.number}}: {{ws.title}}</a></li>
{% else %}
{% assign newday = ws.date | split: "," %}
{% assign day = newday[0] %}
<h3>{{day}} <a href="#{{day}}">&#8595;</a></h3> 
<li><a href="#{{ws.number}}">{{ws.number}}: {{ws.title}}</a></li>
{% endif%}
{% endfor %}
</ul>

{% assign day = "NOPENOPENOPE" %}
{% for ws in site.data.workshops-2019-1 %}
{% if ws.date contains day %}
  <h3 id="{{ws.number}}"> {{ws.number}}: {{ws.title}}</h3>
  <p><b>{{ws.authors}}</b></p>
  <p><b>{{ws.date}}</b></p>
  <p><em><small>{{ws.advertisement}}</small></em></p>
{% else %}
{% assign newday = ws.date | split: "," %}
{% assign day = newday[0] %}
<div  id="{{day}}" name="{{day}}" class = "alert alert-info" style="margin-top: 23px">
    <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>
      {{day}}
  </div>
  <h3 id="{{ws.number}}"> {{ws.number}}: {{ws.title}}</h3>
  <p><b>{{ws.authors}}</b></p>
  <p><b>{{ws.date}}</b></p>
  <p><em><small>{{ws.advertisement}}</small></em></p>

{% endif %}

<p>{{ws.abstract}}</p>

{% endfor %}

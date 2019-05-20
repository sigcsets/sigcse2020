---
title: Workshops
showTitle: true
---

{% assign prevdate = "" %}

{% for ws in site.data.workshops-2019 %}
{% assign thisdate = ws.date %}
{% if thisdate != prevdate %}
  <h2 class="alert alert-info">{{thisdate}}</h2>
{% endif %}

{% if ws.cancelled %}
<h3 style="color: red;">CANCELED: Workshop {{ws.number}}</h3> 
<div style = "color: #CCCCCC; ">
{% endif %}

<h3 {% if ws.cancelled %} style="text-decoration:line-through;"{% endif %} > {{ws.number}}: {{ws.title}}</h3>

<p><b>{{ws.presenters}}</b><br/>
<b>{{thisdate}}</b><br/>
<b>Room: {{ws.room}}</b></p>
{{ws.abstract}}

{% if ws.cancelled %}
</div>
{% endif %}

{% assign prevdate = thisdate %}
{% endfor %}

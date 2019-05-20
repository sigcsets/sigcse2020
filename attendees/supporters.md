---
title: Supporter Sessions
showTitle: true
---

{% assign prevdate = "" %}

{% for event in site.data.supporter-sessions %}

{% assign thisdate = event.date %}
{% if thisdate != prevdate %}
<h2 class="alert alert-info">{{thisdate}}</h2>
{% endif %}

<h3>{{event.name}}: {{event.title}}</h3>
<p><b>
Presenter(s): {{event.authors}}<br/>
Time: {{event.time}}<br/>
Room: {{event.room}}</b></p>

{{event.abstract}}

{% assign prevdate = thisdate %}
{% endfor %}

---
title: Accepted Papers, Panels, and Special Sessions
showTitle: true
---

{% assign prevtype = "" %}

{% for submission in site.data.accepted %}
{% assign thistype = submission.type %}
{% if thistype != prevtype %}
  <h2 class="alert alert-info">{{thistype}}s</h2>
{% endif %}

<p>
<strong {% if ws.cancelled %} style="text-decoration:line-through;"{% endif %} > {{submission.title}}</strong>
<br>
{{submission.authors}}<br/>

{% assign prevtype = thistype %}
{% endfor %}

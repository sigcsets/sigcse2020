---
title: Pre-Symposium Events
showTitle: true
---

There are several exciting pre-symposium events this year; plan your travel so you can get in a day early and take part in these excellent professional development and educational opportunities.

<b>Please note</b>, some presymposium events have associated fees.

<!-- num,presenters,title,description,cost,date,room,maxparticipants,infourl,numppl -->


<ul>
{% for event in site.data.presymposium %}
  <li><a href="#{{event.num}}">{{event.title}}</a> </li>
{% endfor %}
</ul>

{% for event in site.data.presymposium %}
{% if event.title != "" %}

<p><a name="{{event.num}}"></a></p>

<h3>{{event.title}}</h3>

<ul>
<li><b>Organizers</b>: {{event.presenters}}</li>
<li> <b>Date/Time</b>: {{event.date}}</li> 
{% if event.room %} 
<li><b>Room</b>: {{event.room}} </li>
{% endif %} 

{% if event.cost.size > 2 %}
<li> <b>Cost</b>: {{event.cost}} </li>
{% else %}
<li> <b>Cost</b>: None </li>
{% endif %}

<li> <b>Max Participants</b>: {{event.maxparticipants}}</li> 
{% if event.infourl %} 
<li> <b>Info</b>: <a href="{{event.infourl}}">{{event.infourl}}</a><br/></li> 
{% endif%}

</ul>

{{event.description}}

{% if event.info %}
  {% if event.info contains "http" %}
**For additional information**: <a href="{{event.info}}">{{event.info}}</a>
  {% else %}
**For additional information**: {{event.info}}
  {% endif %}
{% endif %}

{% if event.register %}
  {% if event.register contains "http" %}
**To register for this event**: <a href="{{event.register}}">{{event.register}}</a>
  {% else %}
<b>{{event.register}}</b>
  {% endif %}
{% endif %}

{% if event.deadline %}
<b>Application Deadline</b>: {{event.deadline}}
{% endif %}

<p>&nbsp;</p>
{% endif %}

{% endfor %}

{% comment %}
## For More Information

If you are interested in hosting a pre-symposium event, please contact the Pre-Conference Events Liaison (below) to request an application form.  Application forms should be submitted by <b>{{subdate}}</b> for full consideration.

Depending on the number of applications submitted and space availability at the conference hotel, not all events may be selected for inclusion.
{% endcomment %}

<p>

{% include submission-questions category="Pre-Symposium and Affiliated Events Liaison" %}


---
title: Supporter Sessions
showTitle: true
---


{% comment %}
*Date,*Time Start,*Time End,Tracks,*Session Title,Room/Location,Description,Speakers,Authors,"Session or 
Sub-session(Sub)",,,,,,,,,,,,,,,,

WARNING FIXME
The Whova presymposium data must be run through clean-whova.rkt.

You can do this by running 

racket clean-whova.rkt

or loading it into DrRacket and hitting "Run"

{% endcomment %}

{% include presymp.html track="Supporter Session" %}




{% comment %}

<!-- 
DAY,NUMBER,TIME,COMPANY,LEVEL,SESSION TITLE,ROOM,PRESENTERS,CONTENT
-->

{% for day in site.data.supporter-sessions-2019 %}
<div class = "row">
  <div class = "alert alert-info" style="margin-top: 20px">
	<h3 style="color: #ffffff">{{day["day"]}} - {{day["date"]}}</h3>
</div>
</div>
  {% for ws in day["events"] %}
  <h3>{{ws["title"]}}</h3>
  <div class = "row">
  	<div class = "col-sm-4">
  		<b>Date/Time: {{ws["time"]}}</b>
  	</div>
  </div>
  <div class="row" style="margin-top: 20px;">
    <div class = "col-sm-8">
      {% for p in ws["presenters"] %}
        <li> {{p["presenter"]}} - {{p["affiliation"]}}</li>
      {% endfor %}
  	</div>
  </div>
  <div class = "row">
  	<div class = "col-sm-8 col-sm-offset-1" style = "margin-top: 20px;">
  		<p> {{ws["abstract"] | newline_to_br}} </p>
  	</div>
  </div>	
  {% endfor %}
{% endfor %}
{% endcomment %}
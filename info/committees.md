---
layout: default
title: Committees
---

{% assign rows = 2 %}
{% assign cellstyle = "col-md-6" %}

{% for comm in site.data.committees %}
{% assign ctr = 0 %}
<div class = "row">
<a name = "{{comm.name | remove: " " }}"></a>
<h2> {{comm.name}}</h2>
  {% for memb in comm.members %}
    {% if ctr == rows %}
</div>
<div class = "row" style = "margin-top: 30px;">
{% assign ctr = 0 %}
    {% endif %}
    {% assign ctr = ctr | plus: 1 %}
<div class = "{{cellstyle}}">
  <table  width = "100%">
    {% if memb.role %}
      <tr>
        <td  colspan = "2">
          <h4>{{memb.role}}</h4>
        </td>
      </tr>
    {% endif %}
    <tr>
      <td width = "20%" > <b> Name: </b> </td>
      <td> {{memb.name}} </td>
    </tr>
    {% if memb.inst %}
    <tr>
      <td> <b> Institution:&nbsp; </b> </td>
      <td> {{memb.inst}} </td>
    </tr>
    {% endif %}
    {% if memb.email %}
    <tr>
      <td> <b> E-mail: </b> </td>
      <td> <a href="mailto:{{memb.email}}">{{memb.email}}</a> </td>
    </tr>
    {% endif %}

  </table>
</div>
  {% endfor %}
</div> <!-- row -->
{% endfor %}


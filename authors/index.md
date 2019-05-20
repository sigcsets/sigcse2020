---
layout: default
title: "Dates and Guidelines"
showTitle: true
---

We have broken out submission guidelines by type. There are many ways to share the excellent work you are doing, and we would encourage you to consider all of them as you think about what would make the best vehicle for sharing your efforts with the larger community.

<div class="row">
    <div class="table-responsive">
      <table class="table">
          <tbody>
    {% for submission in site.data.cfp.master %}
      <tr>
        <td> <b>

        {% if submission.round == "round0" %}
           {{site.data.cfp.round0.date}}
        {% elsif submission.round == "round1" %}
            {{site.data.cfp.round1.date}}
        {% elsif submission.round == "round2" %}
            {{site.data.cfp.round2.date}}
        {% else %}
           Oops
        {% endif %}
        </b> </td>
        <td>
          {% for sub in submission.types %}
              {% capture link %}<a href = "{{sub.include | remove: ' ' | downcase}}.html">{{sub.plural}}</a>{% endcapture %}
              {% capture entry %}{% if forloop.first %}{% else %}<br/> {% endif %}{{link}}{% endcapture %}
              {{entry}}
          {% endfor %}
        </td>
      </tr>
    {% endfor %}
        </tbody>
      </table>
    </div>
  <div class="col-md-12 well">
      Dates for <b>notification of acceptance</b> and <b>camera-ready submission</b> can be found on the detail page for each specific submission type.
  </div>



</div>
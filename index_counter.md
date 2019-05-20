---
title: "SIGCSE 2020"
layout: default
---

<div class = "row justify-content-center">
  <div class = "col text-center">
    <h2>SIGCSE 2020</h2>
    <p>A Vision for the Next 50 Years</p>
  </div>
</div>

<div class = "row justify-content-center">
  <div class = "col-md-2">
  </div>
  <div class = "col-md-9 text-center">
    <div class = "countdown"></div>
  </div>
</div>

<div class = "row justify-content-center" style = "margin-top: 20px;">
  <div class = "col text-center">
    <a href = "{{ site.data.links.cfp }}">
      SIGCSE 2020 Call for Participation (PDF)
    </a>
  </div>
</div>
<div class = "row justify-content-center" style = "margin-top: 20px;">
  <div class = "col text-center">
    <a href = "{{ site.data.links.call_for_reviewers }}">
      Call for Reveiwers
    </a>
  </div>
</div>






<script>
  var clock;

  $(document).ready(function() {

  // Grab the current date
  var currentDate = new Date();

  // Set some date in the future. In this case, it's always Jan 1
  var futureDate  = new Date('March 11, 2020 23:59:59');

  // Calculate the difference in seconds between the future and current date
  var diff = futureDate.getTime() / 1000 - currentDate.getTime() / 1000;

  // Instantiate a coutdown FlipClock
  clock = $('.countdown').FlipClock(diff, {
    clockFace: 'DailyCounter',
    countdown: true
  	});
  });
</script>
---
title: "SIGCSE 2020"
layout: default
---

<div class="row">
  <div class = "col-sm-4">
  </div>
  <div class = "col-sm-4">
    
  </div>
  <div class = "col-sm-4">
  </div>
</div>

<div class="countdown"></div>


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
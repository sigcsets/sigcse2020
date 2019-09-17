---
title: For Attendees
showTitle: true
cancellation_date: "January 1, 2020"
reg_open_short: "TBA"
<!--#nav:
  - text: Registration Information
    link: registering-for-sigcse-2019
#  - text: Hotel Reservation
#    link: conference-hotels
#  - text: Alternate Hotels
#    link: unofficial-hotels    
  - text: Visas
    link: regarding-visas
#  - text: Roommate Database
#    link: find-a-roommate
#  - text: Visitor Info
#    link: getting-to-sigcse-2019-->
---


<ul>
{% for h in page.nav %}
<li> <a href="#{{h.link}}">{{h.text}}</a></li>
{% endfor %}
</ul>

<br/>

<!--SIGCSE {{site.data.sigcse.year}} will be held at the <a href="https://www.hyatt.com/en-US/hotel/minnesota/hyatt-regency-minneapolis/msprm" target="_blank">Hyatt Regency Minneapolis</a> and the <a href="https://www.millenniumhotels.com/en/minneapolis/millennium-hotel-minneapolis/" target="_blank">Millennium Minneapolis</a> in Minneapolis, Minnesota, USA.-->

This page will contain everything you need for registration, reserving a room, obtaining visas, and finding a roommate. For now, we want to make sure that rate information is available early to attendees.

<!-- TODO: Add in top level nav from commit history later -->

<!--<a name="registering"></a>

## Registering for SIGCSE {{site.data.sigcse.year}} -->

<!--
SIGCSE 2018 takes place February 21-24, 2018.

As always, we encourage attendees to register early. This helps us with our planning, and in return, you get lower registration rates!
-->

<!-- TODO: Update else message to mention onsite registration in February -->
<!--{% assign right_now = "now" | date: "%Y%m%d" %} -->

<!-- MCJ 181119: This is how you convert a string to an integer in Liquid Tags. -->
<!-- This is almost as exciting as Javascript. -->
<!-- https://stackoverflow.com/questions/27198710/convert-string-to-integer-in-shopify-liquid -->
<!--{% assign od = site.data.sigcse.registration.opendate | plus: 0 %}
{% assign rn = right_now | plus: 0 %}

{% if rn >= od  %}
<div class="alert alert-success text-center">
<span class="glyphicon glyphicon-home" aria-hidden="true"></span> <a href="{{site.data.sigcse.registration.url}}">Register now!</a>
</div>
{% else %}
{% callout info %}
  Details about registration will be coming soon!
{% endcallout %}
{% endif %} -->

<!--
<p>Also, if you are not currently a SIGCSE member, you should <b>consider joining at the same time that you register</b> for the conference. Professionals can <b>save between $30 and $55</b>, while both professionals and students <b>save time</b> by not having to fill out a separate membership form.  The <a href="http://sigcse.org/sigcse/membership/benefits">benefits of SIGCSE membership</a>  are too numerous to list here, but they include the quarterly publications <i>ACM Inroads</i> and the <i>SIGCSE Bulletin</i>, free access to SIGCSE publication archives, access to the SIGCSE-ANNOUNCE and SIGCSE-MEMBERS mailing lists, and the opportunity to network within a community of computing professionals.</p>

Professionals should choose one of the "Non-member joining SIGCSE" registration categories, which are <b>less expensive</b> than the Non-member category. Students simply choose the "Student Non-member" registration category, and then don't opt-out of the included membership (that's right -- it couldn't be much easier). Alternatively, you could <a href="http://sigcse.org/sigcse/membership">join SIGCSE</a>, wait for your membership number, and then register for the conference using the "Member" category.

But wait! There's more! <b>Student volunteers</b> get reimbursed for their conference registration, so they actually <b>get free SIGCSE membership</b> when they join at the same time that they register for the conference. Important: to get this benefit, students must register as volunteers through a system separate from conference registration.
-->

<a name="registrationrates"></a>

### Registration Rates


<div class = "row" style = "font-weight: bold;">
    <div class = "col-sm-6"> Registration Type </div>
    <div class = "col-sm-2"> Early: Through Jan 29 </div>
    <div class = "col-sm-2"> Advance: Through Mar 10 </div>
    <div class = "col-sm-2"> Late/Onsite:<br>Mar 11 onward </div>
</div>
<div class = "row" style="padding-top: 15px;">
    <div class = "col-sm-6"> Student <b>&starf;</b> </div>

    <div class = "col-sm-2"> $100 </div>
    <div class = "col-sm-2"> $100 </div>
    <div class = "col-sm-2"> $100 </div>
</div>
<div class = "row" style="padding-top: 15px;">
    <div class = "col-sm-6"> K-12 Teacher Fri-Sat <b>&starf;</b> </div>
    <div class = "col-sm-2"> $160 </div>
    <div class = "col-sm-2"> $185 </div>
    <div class = "col-sm-2"> $210 </div>
</div>
<div class = "row" style="padding-top: 15px;">
    <div class = "col-sm-6"> K-12 Teacher <b>&starf;</b> </div>
    <div class = "col-sm-2"> $300 </div>
    <div class = "col-sm-2"> $325 </div>
    <div class = "col-sm-2"> $350 </div>
</div>
<div class = "row" style="padding-top: 15px;">
    <div class = "col-sm-6"> Community College Faculty Fri-Sat <b>&starf;</b> </div>
    <div class = "col-sm-2"> $160 </div>
    <div class = "col-sm-2"> $185 </div>
    <div class = "col-sm-2"> $210 </div>
</div>
<div class = "row" style="padding-top: 15px;">
    <div class = "col-sm-6"> Community College Faculty <b>&starf;</b> </div>
    <div class = "col-sm-2"> $300 </div>
    <div class = "col-sm-2"> $325 </div>
    <div class = "col-sm-2"> $360 </div>
</div>
<div class = "row" style="padding-top: 15px;">
    <div class = "col-sm-6"> Retired SIGCSE members <b>&starf;</b> </div>
    <div class = "col-sm-2"> $200 </div>
    <div class = "col-sm-2"> $225 </div>
    <div class = "col-sm-2"> $325 </div>
</div>
<div class = "row" style="padding-top: 15px;">
    <div class = "col-sm-6"> ACM/SIG Members <b>&starf;</b> </div>
    <div class = "col-sm-2"> $350 </div>
    <div class = "col-sm-2"> $400 </div>
    <div class = "col-sm-2"> $450 </div>
</div>
<div class = "row" style="padding-top: 15px;">
    <div class = "col-sm-6"> Non-ACM/SIG Members </div>
    <div class = "col-sm-2"> $450 </div>
    <div class = "col-sm-2"> $500 </div>
    <div class = "col-sm-2"> $550 </div>
</div>

<div class = "row" style="padding-top: 15px;">
    <div class = "col-sm-6"> Exhibits Only </div>
    <div class = "col-sm-2"> $75 </div>
    <div class = "col-sm-2"> $75 </div>
    <div class = "col-sm-2"> $75 </div>
</div>

<div class = "row" style = "font-weight: bold;">
	<div class = "col-sm-8">
		<hr>
		<b>&starf;</b> Must be or become an ACM member to receive this rate
	</div>
</div>

NOTE: Registration is unavailable from Feb 21-Feb 26.

All times related to registration are in the <a href="https://www.timeanddate.com/time/zones/cst" title="IAU: No, there's nothing we can do about it.">CST timezone</a>. This is a side-effect of the registration software being used. 

<div class = "row" style = "padding-bottom: 5;">&nbsp;</div>

#### Workshop Registration

<div class = "row" style = "font-weight: bold;">
    <div class = "col-sm-6"> Workshop Registration Rates </div>
    <div class = "col-sm-2"> Early: Through Jan 27 </div>
    <div class = "col-sm-2"> Advance: Through Feb 21 </div>
    <div class = "col-sm-2"> Late/Onsite: Feb 27 onward </div>
</div>
<div class = "row" style="padding-top: 15px;">
    <div class = "col-sm-6"> All Attendees </div>
    <div class = "col-sm-2"> $60 </div>
    <div class = "col-sm-2"> $80 </div>
    <div class = "col-sm-2"> $95 </div>
</div>


### Registration Location and Hours

The registration desk will be in the Hyatt: Nicollet Promenade (1st Floor). The hours will be:

  <table class="table">
      <tbody>
        <tr>
            <td><strong>Date</strong></td>
            <td><strong>Start Time</strong></td>
            <td><strong>End Time</strong></td>
        </tr>
        <tr>
            <td>2/27/19</td>
            <td>3:00 PM</td>
            <td>9:30 PM</td>
        </tr>
        <tr>
            <td>2/28/19</td>
            <td>7:30 AM</td>
            <td>9:30 PM</td>
        </tr>
        <tr>
            <td>3/1/19</td>
            <td>8:00 AM</td>
            <td>5:00 PM</td>
        </tr>
        <tr>
            <td>3/2/19</td>
            <td>8:00 AM</td>
            <td>11:45 AM</td>
        </tr>        
        </tbody>
    </table>


### Cancellation Policy

Cancellation requests must be made by {{page.cancellation_date}}.

A processing fee of US$100 will be assessed. Regrettably cancellations received after the cancellation date cannot be honored. The conference committee recognizes that sometimes last minute cancellations can't be avoided due to weather, travel disruptions, and/or health issues. However, the conference incurs expenses for which it is liable based on registration counts on the following day. Therefore, no refunds are possible after the cancellation date for any reason. Attendees are strongly advised to purchase travel insurance to cover their non-refundable expenses.




### Regarding Visas

ACM is able to provide visa support letters to attendees as well as authors with accepted papers, posters, or members of the conference committee.

For Visa support letters, please email all requests to the Office of SIG Services at [supportletters@acm.org](mailto:supportletters@acm.org).  The information below should be included with the request:

* Name (as it appears on attendee’s passport) and 
* Mailing address
* The name of the conference attendees is registering for
* Attendee’s registration confirmation number (if available) OR
* Authors may indicate their paper title. Speakers can provide the title of their talk.
* Include a fax number or email address of where letter can be sent

Those requesting a letter should allow 7-10 business days to receive it. All requests are handled in the order they are received.


<a name="reserving"></a>

## Conference Hotels

### Official Conference Hotel Information

Conference rates are $145/night plus tax. **As of 1/19/2019, the official conference hotels are sold out.** Alternate hotels are suggested below this section.

<!--
{% callout info %}
The room reservation links are NOT yet available, so don't book your room yet!
{% endcallout %}
-->

#### Hyatt Regency Minneapolis

* <a href="https://book.passkey.com/e/49518618" target="blank">Reservation Link</a>
* 1300 Nicollet Mall, Minneapolis, Minnesota, United States, 55403
* 612.370.1234

#### Millennium Minneapolis

* <a href="https://res.windsurfercrs.com/ibe/details.aspx?propertyid=13527&nights=2&checkin=02/26/2019&group=1902COMMAC" target="blank">Reservation Link</a>
* 1313 Nicollet Mall, Minneapolis, Minnesota, United States, 55403
* 612.332.6000

**Hotels are connected via skywalk corridor accessible on 2nd floor.**

<span class="anchor" id = "roommatedb"></span>

## Unofficial Hotels

The conference planning company recommends the following nearby hotels with availability that are connected to the Minneapolis Skyway. Rates vary at each hotel. 

 - [Hotel Ivy, a Luxury Collection Hotel Minneapolis](https://www.marriott.com/hotels/travel/msplc-hotel-ivy-a-luxury-collection-hotel-minneapolis/)
 - [Minneapolis Hilton](
https://www3.hilton.com/en/hotels/minnesota/hilton-minneapolis-MSPMHHH/index.html)
 - [Foshay W Hotel](https://www.marriott.com/hotels/travel/mspwh-w-minneapolis-the-foshay/)
 - [Crowne Plaza Northstar](
https://www.crowneplaza.com/hotels/us/en/minneapolis/mspcp/hoteldetail?newRedirect=true&qIta=99504425&icdv=99504425&glat=SEAR&qSlH=mspcp&setPMCookies=true&qDest=618%20Second%20Avenue%20South,%20Minneapolis,%20MN,%20US&dp=true&gclid=Cj0KCQiAvqDiBRDAARIsADWh5TcNFXN_pntjb0X57sxG-6bvkHpHLHTDDkDef5xh74CTHYxRfypBBFAaAtSkEALw_wcB&cid=25159&srb_u=1)
 - [Marquette Hotel](
https://curiocollection3.hilton.com/en/hotels/minnesota/the-marquette-hotel-curio-collection-by-hilton-MSPCUQQ/index.html?SEO_id=GMB-QQ-MSPCUQQ)

In addition, the [Skyway Guide](files/skyway-guide.pdf) includes other hotels in downtown Minneapolis that may or may not have availability.

## Find a Roommate!

You can also use the [SIGCSE roommate database](http://sigcse.rit.edu/roommates/) to find someone to room with. This is the preferred database of SIGCSE members around the world for finding roommates at the SIGCSE Technical Symposium. Honest.

<a name="travel"></a>

## Getting to SIGCSE {{site.data.sigcse.year}}

See our [visitor info](visitor-info.html) for information about getting in-and-out of Minneapolis.

You'll want **Minnapolis-Saint Paul International Airport**. That's airport code [MSP](https://www.mspairport.com/).

<!--
### Air Travel

[Baltimore–Washington International Airport (BWI)](http://www.bwiairport.com)<br>
7035 Elm Road, Baltimore, MD 21240

Other local options include [Dulles International Airport (IAD)](http://www.flydulles.com/iad/dulles-international-airport) and [Reagan National Airport (DCA)](http://flyreagan.com/dca/reagan-national-airport), which will require an additional 1-2 hours of travel by car or train. 

### Travel from Airport to Venue

From Baltimore-Washington International Airport (BWI):

* [SuperShuttle](https://www.supershuttle.com/locations/baltimorebwi/) (~$15-25, reserve in advance)
* [BWI Taxi](http://www.bwiairporttaxi.com/) (~$35)
* [MTA Light Rail](https://www.bwiairport.com/to-from-bwi/transportation/transit/mta-light-rail) ($1.80, ~7 minute walk to/from stations)
* [Lyft](https://www.lyft.com/airports/bwi) or [Uber](https://www.uber.com/airports/bwi/) (~$30)

From Dulles International Airport (IAD):

* [SuperShuttle](https://www.supershuttle.com/locations/washington-dca-iad/) (~$150, reserve in advance)
* [Washington Flyer Taxi](http://www.flydulles.com/iad/washington-flyer-taxi-service) (~$170)

From Reagan National Airport (DCA):

* [SuperShuttle](https://www.supershuttle.com/locations/washington-dca-iad/) (~$150, reserve in advance)
* [Taxi](http://www.flyreagan.com/dca/taxi-service) ($~110)
* [DC Metro](https://www.wmata.com/) and [MARC train](https://mta.maryland.gov/marc-train) (~$15)

#### Local Transport

* [MTA](https://mta.maryland.gov/) (Bus, Metro, and Light Rail)
* [Yellow Cab](http://www.yellowcabofbaltimore.com/), [Lyft](https://www.lyft.com/), [Uber](https://www.uber.com/)
* [Baltimore Bike Share](https://www.bmorebikeshare.com/)
* [Water Taxi](http://www.baltimorewatertaxi.com/)
* [Accessible transportation (a review)](https://wheelchairtravel.org/baltimore-md/)

#### Other Travel

Bus and train are affordable ways to see other parts of the US East Coast before or after the conference. Here are some options that are within a few miles of the conference venue:

* [MARC](https://mta.maryland.gov/marc-train) (local commuter train)
* [Amtrak](https://www.amtrak.com/home) (East Coast train)
* [Bolt Bus](https://www.boltbus.com/) (up to New York and New Jersey)
* [Greyhound](https://www.greyhound.com/north) (throughout the US)

-->

<!--### Nursing Moms

A lactation area and refrigerator will be provided in South Show Office, off of the Charles St. Lobby, near registration.  -->

BOBBLE TEMPLATE
===============

Easily monitor all your sites on the cheap. This is a template for using the [bobble gem](http://github.com/ahfarmer/bobble). For more information, visit:

[http://github.com/ahfarmer/bobble](http://github.com/ahfarmer/bobble)

USAGE
=====

First clone this repo:

    git clone git://github.com/ahfarmer/bobble-template.git
    git remote rm origin

Now modify `clock.rb`, replacing the `http://www.example.com` URLs with any that you want to monitor. Then commit and you can push it to heroku:

    heroku create <new-heroku-app-name> --stack cedar
    git push heroku master
    heroku scale clock=1

Then pick how you want to be notified when your sites go down. Add your credentials for any or all of the following notifiers:


1. Gmail
--------

    heroku config:add BOBBLE_GMAIL_USERNAME=<i.e. example@gmail.com>
    heroku config:add BOBBLE_GMAIL_PASSWORD=<your gmail password>
    heroku config:add BOBBLE_GMAIL_TO_EMAIL=<email to receive the notifications>


2. Google Voice
---------------

    heroku config:add BOBBLE_GVOICE_USERNAME=<i.e. example@gmail.com>
    heroku config:add BOBBLE_GVOICE_PASSWORD=<your gmail password>
    heroku config:add BOBBLE_GVOICE_TO_PHONENUMBER=<mobile number to receive notifications, i.e. +14155555555>


3. Twilio
---------

Sign up for Twilio and purchase a phone number (currently $1/month). Then:

    heroku config:add BOBBLE_TWILIO_SID=<your twilio SID>
    heroku config:add BOBBLE_TWILIO_TOKEN=<your twilio auth token>
    heroku config:add BOBBLE_TWILIO_FROM_PHONENUMBER=<your twilio phone number, i.e. +14155555555>
    heroku config:add BOBBLE_TWILIO_TO_PHONENUMBER=<mobile number to receive notifications, i.e. +14155555555>


After you've added your notifiers, just sit back and relax! You'll get either a text or an email when your site goes down.





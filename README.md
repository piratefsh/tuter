# Tuter: The Ultimate Tutor Finder App
v1.0 02-21-2013

**_Tuter_ is now in 2nd phase of development**

## An Introduction
**_Tuter_** is an online tutoring management system developed by a team of 5 cool humans.

Notes: 

 - **Linux** users need to uncomment `gem 'therubyracer'` in the Gemfile. 
 - **Facebook** sign-in only works when web app is on Heroku. Will not work locally

## To Run Server 
```
$ rake db:migrate
$ rake db:seed
$ rails server
```

## To Run Web App Locally
Visit **localhost:3000** on your browser

## Hosted
http://tuter.heroku.com

## Tuter Mobile
###Dependencies
The Android app requires Google Play Services installed. Here is a quick guide on setting it up
https://docs.google.com/document/pub?id=19nQzvKP-CVLd7_VrpwnHfl-AE9fjbJySowONZZtNHzw

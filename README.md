# Tuter: The Ultimate Tutor Finder App 
v1.0 02-21-2013
v2.0 04-11-2013

**_Tuter_ is now in 2nd phase of development** 

## An Introduction 
**_Tuter_** is an online tutoring management system developed by a team of 5 students at the University of Wisconsin - Madison. The app was developed as a semester project for CS 638 - Software Engineering, taught by Professor Benjamin Liblit (http://pages.cs.wisc.edu/~liblit/) in the Spring of 2013. 

Team Members:

Sher Minn Chong (schong7@wisc.edu)
Trever Johnson (tjjohnson5@wisc.edu)
Josh Serbus (serbus@wisc.edu)
Adam Thorson (adthorson@wisc.edu)
Faiz Lurman (lirman@wisc.edu)

Notes: 

 - **Linux** users need to uncomment `gem 'therubyracer'` in the Gemfile. 

## To Run Server on a machine with Rails 3.2.X and Ruby 1.9.X installed.
```
$ rake db:migrate
$ rake db:seed
$ rails server
```

## To Run Web App Locally 
Visit **localhost:3000** on your browser with a rails server running on your local machine.

## Hosted
http://tuter.herokuapp.com

# README

In this project we will see how does run rake task and rake task can be schedule with whenever Gem

rake task is written in the lib/tasks/hello.rake
and /congig/schedule.rb conains the time period logic to run it after particular time

visite to whenever gem :https://github.com/javan/whenever to learn more!

whenever gem steps!
-----------------------------------------------------------------------
Installation
$ gem install whenever
Or with Bundler in your Gemfile.

gem 'whenever', require: false
Getting started
$ cd /apps/my-great-project
$ bundle exec wheneverize .
This will create an initial config/schedule.rb file for you (as long as the config folder is already present in your project).

The whenever command
The whenever command will simply show you your schedule.rb file converted to cron syntax. It does not read or write your crontab file.

$ cd /apps/my-great-project
$ bundle exec whenever
To write your crontab file for your jobs, execute this command:

$ whenever --update-crontab

 #To run in local host!
--------------------------------------------------------------------

To update your local crontab in development mode, you'll need to run the whenever command manually, instead of relying on the included Capistrano tasks to do it for you. whenever --update-crontab --set environment=development should do the trick.

From there, you can run crontab -l to ensure that your crontab file was written. Your job should be running every 2 minutes now. Note, you won't ever see any text in your console; the runner occurs in a new process

#run this below command on local host for schedular whenever gem use

crontab -r
--update-crontab --set environment=development
crontab -l


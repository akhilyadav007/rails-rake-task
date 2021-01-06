# rails-rake-task
In this project we will see how does run rake task and rake task can be schedule with whenever Gem

To update your local crontab in development mode, you'll need to run the whenever command manually, instead of relying on the included Capistrano tasks to do it for you. whenever --update-crontab --set environment=development should do the trick.

From there, you can run crontab -l to ensure that your crontab file was written. Your job should be running every 2 minutes now. Note, you won't ever see any text in your console; the runner occurs in a new process

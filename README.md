# README

This README is about how to run this application. The apllication is to satisfy a challenge of iCasei

* Ruby version:

  Ruby 2.5.3 or up
  Rails 5.2.2 or up

* Configuration: 

To set up the app type the following commands in the terminal:

$ git clone git@github.com:JEVBR/iCasei.git

$ cd iCasei

$ bundle install

$ yarn install

* Database creation

$ rails db:create

$ rails db:migrate

* startup:

$ rails server

Now please open a browser and surf to:

localhost:3000/

Here you can navigate trough the Home page, Test page, You can register at the Contact page. All navigation is registered and the last 50 registers are displayed at the Visitors page.

Still to do: automated testing.



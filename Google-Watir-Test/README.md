Browser tests using the Ruby page-object gem for downshift, some
simple, flexible, WAI-ARIA compliant enhanced input React components 

https://github.com/paypal/downshift

How to run browser tests locally (non-Windows OS)

One-time steps:

* Install Firefox if it’s not already installed. Download geckodriver from https://github.com/mozilla/geckodriver/releases

* Chrome is recommended; download the Chrome driver at https://sites.google.com/a/chromium.org/chromedriver/


Unzip the downloaded file, and put geckodriver/chromedriver binaries in your $PATH

`mv ~/Downloads/chromedriver /usr/local/bin/`

`mv ~/Downloads/geckodriver /usr/local/bin/`

`export SELENIUM_BROWSER=chrome` to use the Google Chrome browser

`unset SELENIUM_BROWSER` to use Firefox


* If you're new to ruby:
* Install RVM and Ruby 2.x (for details see https://rvm.io/)

````
\curl -sSL https://get.rvm.io | bash -s stable
rvm install ruby 2.2.8
````
* check your install:

````	
which ruby
````
You should see something like */Users/[your user]/.rvm/rubies/ruby-2.2.8/bin/ruby*

if you see something like /usr/bin/ruby instead of .rvm/rubies, read the RVM docs and fix your path

Once you have Ruby in place, install the bundler gem:

`gem install bundler`

* clone or download the code git@github.com:chrismcmahon/Downshift-Watir-Tests.git

`bundle install`

Run tests locally:

Make sure you're using a local browser:

`export RUN_LOCAL=true`

If you want to use SauceLabs instead of running locally: 

`export SAUCE_NAME=[your Sauce user name]`

`export SAUCE_KEY=[your Sauce identification key]`

`export RUN_ON_SAUCE=true`

If you want the browser to stay open when a Scenario finishes: `export KEEP_BROWSER_OPEN=true` 

Do `unset KEEP_BROWSER_OPEN` to return to having the browser instance close automatically when tests finish.

To run the tests from the project directory :

`bundle exec cucumber features/` to run all tests

`bundle exec cucumber features/my_test.feature` to run one test

`bundle exec cucumber features/*foo*` to run all tests containing "foo" in the name

`bundle exec cucumber features/my_test.feature:42` to run a single Scenario within a Feature at line 42



This test framework depends heavily on Jeff Morgan's page_object Ruby gem. 
Please find many details documented at https://github.com/cheezy/page-object/

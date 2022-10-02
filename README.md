# Google-Watir-Test
Basic demo of an automated test against the google search page

This is intended to be a reference implementation of the page-object Ruby gem by Jeff "Cheezy" Morgan. https://github.com/cheezy/page-object

To use this: 
* Install Firefox and geckodriver. (For other browsers, see env.rb)
* Do 'bundle install' and/or 'bundle update' to get all the gems you need
* From the directory at /Google-Watir-Test/Google-Watir-Test do "bundle exec cucumber features/" to run all the tests

Cucumber is the test runner. The Cucumber Scenarios are in the file in features/google_search.feature

The code that executes the tests are in the files under features/step_definitions. Note that there are no element locators whatsoever in the steps files. All the descriptions of the page elements in the executable steps code are purely abstract. Also note that the contents of the steps are essentially verbs: click(), send_keys(), expect(). The use of "expect" here is how we invoke RSpec, Ruby's very powerful assertion library. 

The executable code hits the page itself in features/support/pages. This is the essence of the Page Object design pattern. We define each element one time per page, then update our locators for our pages as necessary. The executable code in the steps files rarely changes.


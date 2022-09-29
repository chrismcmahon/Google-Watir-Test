Feature: Downshift Controls on Netlify

  Background:
    Given I navigate to Google Search page

  Scenario: Normal Search
    When I search for "Chris McMahon"
    Then I should see "Chris McMahon" in the results"

  Scenario: Failed Search
    When I search for "sdlfjlasjsd;flhadf"
    Then I should see no results

  




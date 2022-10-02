When('I search for {string}') do |search_value|
  on(GoogleSearchPage) do |page|
    page.search_box_element.click
    page.search_box_element.send_keys search_value
    page.search_box_element.send_keys :return
    sleep 2
  end
end

Then('I should see {string} in the results') do |search_result|
  expect(on(GoogleSearchPage).results).to match search_result
end

Then('I should see no results') do
  expect(on(GoogleSearchPage).results).to match 'Search instead for'
end

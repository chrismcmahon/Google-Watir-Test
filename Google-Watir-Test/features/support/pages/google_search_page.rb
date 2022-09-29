class GoogleSearchPage
  include PageObject

  text_field(:search_box, name: 'q')
  div(:results, id: 'rcnt')
end

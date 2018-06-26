Given(/^I visit the dojo demo page$/) do
  visit DojoDemoPage
end

When(/^I select the "([^"]*)" Accordion panel$/) do |panel|
  on(DojoDemoPage).the_accordion.select_panel panel
end

Then(/^the Accordion panel for "([^"]*)" should be visible$/) do |panel|
  expect(on(DojoDemoPage).the_accordion.panel_for(panel)).to be_visible
end
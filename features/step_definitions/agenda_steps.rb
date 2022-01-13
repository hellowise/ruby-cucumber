require 'byebug'
require 'rspec'
require 'nokogiri'

# Before do
#   @commons ||= //.load('commons.rb')
# end

When(/^I click on button "([^"]*)"$/) do |button|
  @commons.click_button(button)
end

When(/^I fill "([^"]*)" field with "([^"]*)" value$/) do |field, value|
  @commons.fill_field(field, value)
end

# When(/^I click on button "([^"]*)" where contact name is "([^"]*)"$/) do |action, contact|
#   @commons.alter_delete_contact(action, contact)
# end

When(/^I click to delete where contact name is "([^"]*)"$/) do |contact|
  @commons.delete_contact(contact)
end

When(/^I click to alter where contact name is "([^"]*)"$/) do |contact|
  @commons.alter_contact(contact)
end

When(/^I fill search field with "([^"]*)" value$/) do |value|
  @commons.fill_filter_field(value)
end

Then(/^I should not see "([^"]*)"$/) do |value|
  @commons.should_not_see(value)
end
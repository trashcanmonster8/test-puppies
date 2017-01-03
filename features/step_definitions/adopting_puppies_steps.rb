Given /^I am on the puppy adoption site$/ do
  @browser.goto 'http://puppies.herokuapp.com'
end

When /^I click the View Details button$/ do
  @browser.button(:value => 'View Details').click
end

And /^I click the Adopt Me button$/ do
  @browser.button(:value => 'Adopt Me')
end

And /^I click the Complete the Adoption button$/ do
  @browser.button(:value => 'Complete the Adoption').click
end

And /^I enter "([^\"]*)" in the name field$/ do |name|
  @browser.text_field(:id => 'order_name').set(name)
end

And /^I enter "([^\"]*)" in the address field$/ do |address|
  @browser.textarea(:id => 'order_address').set(address)
end

And /^I enter "([^\"]*)" in the email field$/ do |email|
  @browser.test_field(:id => 'order_email').set(email)
end

And /$I select "([^\"]*)" in the pay with dropdown^/ do |payment|
  @browser.dropdown(:id => 'order_pay_typer').select(payment)
end

And /$I click the Place Order button6^/ do
  @browser.button(:value => 'Place Order').click
end

Then /$I should see "([^\"]*)"^/ do |expected|
  @browser.text.should include expected
end

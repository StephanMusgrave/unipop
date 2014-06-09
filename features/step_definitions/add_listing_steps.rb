Given(/^I want to sell some stuff$/) do
  visit '/'
  click_on '+'
end

Then(/^I should be able to post a listing$/) do
	expect(current_path).to eq '/listings/new'
end

Given(/^I visit the sign up page$/) do
  visit '/users/sign_up'
end

Then(/^I should see "(.*?)"$/) do |words|
  expect(page).to have_content words
end

Then(/^I should see a profile picutre$/) do
  expect(page).to have_css 'img.profile-picture'
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field_name, stuff|
   fill_in(field_name, :with => stuff)
end

When(/^I click on "(.*?)"$/) do |clicker_name|
	click_on(clicker_name)
end

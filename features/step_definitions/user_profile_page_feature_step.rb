Given(/^I visit Ollie's profile page$/) do
  visit '/users/1'
end

Then(/^I should see "(.*?)"$/) do |words|
  expect(page).to have_content words
end

Then(/^I should see a profile picutre$/) do
  expect(page).to have_css 'img.profile-picture'
end

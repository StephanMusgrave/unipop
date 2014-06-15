And(/^I have a listing$/) do
  user_listing
end

Given(/^I want to change something$/) do
  visit listing_path @my_listing
end

Then(/^I click the Edit button$/) do
   # p page.source
   click_on 'Edit'
end

Then(/^I complete the edit form$/) do
  fill_in 'Description', with: "Makers Notebook - hardly used - for sale"
  fill_in 'Price', with: "0.45"
end

Then(/^I click save changes$/) do
  click_on 'Save'
end

Then(/^I should see my revised listing$/) do
  expect(current_path).to eq listing_path @my_listing
  expect(page).to have_content "Makers Notebook - hardly used - for sale"
  expect(page).to have_content "0.45"
end

Then(/^I should not see an Edit button$/) do
  expect(page).not_to have_content 'Edit'
end



Given(/^I visit the edit profile page$/) do
  visit '/users/edit'
end

Given(/^I change my first name to Nick$/) do
  fill_in 'First name', with: 'Nick'
  fill_in 'Current password', with: '12345678'
  click_button 'Update'
  expect(current_path).to eq("/users/#{@user.id}")
end

Then(/^I should see Nick on the profile page$/) do
  visit user_path the_user
  expect(page).to have_content('Nick')
end

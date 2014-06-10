Given(/^I visit the sign up page$/) do
  visit '/users/sign_up'
end

Then(/^I should see a profile picture$/) do
  expect(page).to have_css 'img.profile-picture'
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field_name, stuff|
   fill_in(field_name, :with => stuff)
end

When(/^I click on "(.*?)"$/) do |clicker_name|
	click_on(clicker_name)
end

Then(/^I should be signed in as "(.*?)"$/) do |name|
	expect(current_user.first_name).to eq name 
end

Given(/^I am already signed in$/) do
	login_as the_user
end

def the_user
	user = User.create(email:'ollie@ollie.com', password:'12345678', password_confirmation:'12345678', first_name:'Ollie', last_name:'Delevingne')
end

Given(/^I visit Ollie's page$/) do
  visit user_path User.find_by(email:'ollie@ollie.com')
end


Given(/^I visit "(.*?)"$/) do |page_path|
	visit "/#{page_path}"

end

Given(/^I upload a profile picture$/) do
	attach_file("profile-picture", Rails.root.join('spec/images/profile_picture.jpg'))
end


Then(/^I should be signed out$/) do
	expect(page).not_to have_content 'Logged in as ollie@ollie.com'
end






Given(/^Ollie is on the homepage$/) do
  visit '/'
end

Given(/^Ollie clicks on Louise's notebook listing$/) do
  click_on @louises_notebook.picture
  expect(current_path).to eq listing_path @louises_notebook
end

Given(/^Ollie clicks "(.*?)"$/) do |clicky|
  click_on clicky
end

Then(/^Ollie enters chatroom to speak with Louise about her notebook$/) do
  expect(current_path).to eq "/listings/#{@louises_notebook.id}/buyers/#{@ollie.id}/chatrooms"
end

Then(/^the listing should show that Ollie is on the waitlist$/) do
  expect(@user.want_listings.last).to eq @louises_notebook
    # current_path).to eq listing_path @listing
  expect(page).not_to have_link 'I want it!'
end

Given(/^Shelley has clicked 'I want it!' on Louise's listing$/) do
  shelley
  @shelley.want_listings << @louises_notebook

end

Then(/^Ollie is referred to his dashboard$/) do
  expect(current_path).to eq '/dashboard'
end

Then(/^Ollie is told he's been added to the waitlist$/) do
  expect(page).to have_content "You have been added to the waiting list for this item"
  expect(page).to have_content "my makers academy black notebook"
end

Given(/^Ollie clicks on his football listing$/) do
  click_on @ollies_football.picture
  expect(current_path).to eq listing_path @ollies_football
end

Then(/^he doesn't see an 'I want it!' button$/) do
  expect(page).not_to have_content "I want it!"
end

def shelley
   @shelley ||= User.create(email:'shell@e.com', password:'12345678', password_confirmation:'12345678', first_name:'Shelley', last_name:'Hope')
end












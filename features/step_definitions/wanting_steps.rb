
# Given(/^I want to buy some stuff$/) do
#   new_listing
#   visit '/'
#   click_on @listing.description
#   expect(current_path).to eq listing_path @listing
# end

# Then(/^I should be able to want a listing$/) do
#   click_on "I want it!"
# end

# Then(/^the listing should show I am on the waitlist$/) do
  # expect(current_path).to eq listing_path @listing
  # expect(page).not_to have_link 'I want it!'
# end

# def new_listing
#   @listing = Listing.create({
#     description: 'Makers Notebook for sale',
#     price: 0.35
#   })
# end



Given(/^Ollie is on the home page$/) do
  visit '/'
end

Given(/^Ollie clicks on Louise's listing$/) do
  click_on @louises_notebook.description
  expect(current_path).to eq listing_path @louises_notebook
end

Given(/^Ollie clicks 'I want it!'$/) do
  click_on "I want it!"
end

Then(/^Ollie enters a chatroom to speak with Louise$/) do
  expect(current_path).to eq "/listings/#{@louises_notebook.id}/buyers/#{@ollie.id}/chat/new"
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


def shelley
   @shelley ||= User.create(email:'shell@e.com', password:'12345678', password_confirmation:'12345678', first_name:'Shelley', last_name:'Hope')
end












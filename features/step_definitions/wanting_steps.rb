
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
  expect(current_path).to eq "/listings/#{@louises_notebook.id}/chatroom"
end



Then(/^the listing should show that Ollie is on the waitlist$/) do
  expect(@user.want_listings.last).to eq @louises_notebook
    # current_path).to eq listing_path @listing
  expect(page).not_to have_link 'I want it!'
end
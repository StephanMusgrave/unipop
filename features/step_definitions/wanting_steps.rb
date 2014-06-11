
Given(/^I want to buy some stuff$/) do
  new_listing
  visit '/'
  click_on @listing.description
  expect(current_path).to eq listing_path @listing
end

Then(/^I should be able to want a listing$/) do
  click_on "I want it!"
  end

Then(/^the listing should add me to the waitlist$/) do
  expect(listing.buyers).to include current_user
end

def new_listing
  @listing = Listing.create({
    description: 'Makers Notebook for sale',
    price: 0.35
  })
end
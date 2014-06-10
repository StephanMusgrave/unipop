Given(/^I want to delete my listing$/) do
  @my_listing = Listing.create({
    description: 'Makers Notebook for sale',
    price: 0.35
  })
end

Then(/^I click delete$/) do
  visit listing_path @my_listing
  click_on 'Delete'
  end

Then(/^I click confirm$/) do
  click_link 'Confirm'
end

Then(/^I should not see my listing$/) do
  expect(current_path).to eq '/'

  expect(page).not_to have_content 'Makers Notebook for sale'
end
Given(/^I want to delete my listing$/) do
  @my_listing = Listing.create({
    description: 'Makers Notebook for sale',
    price: 0.35
  })
end

Given(/^I have a listing$/) do
  @my_listing = Listing.create({
    description: 'Makers Notebook for sale',
    price: 0.35
  })
end

Then(/^I click delete$/) do
  visit listing_path @my_listing
  page.evaluate_script('window.confirm = function() { return true; }')
  click_on 'Delete'
  end


Then(/^I click OK to confirm$/) do
  expect(current_path).to eq '/listings'
end

Then(/^I should not see my listing$/) do
  expect(page).not_to have_content 'Makers Notebook for sale'
end
And(/^I visit my listing$/) do
  user_listing
end

And(/^I click delete$/) do
  visit listing_path @my_listing
  # page.evaluate_script('window.confirm = function() { return true; }')
  click_on 'Delete'
end

And(/^I click OK to confirm$/) do
  expect(current_path).to eq '/listings'
end

Then(/^I should not see my listing$/) do
  expect(page).not_to have_content 'Makers Notebook for sale'
end

Given(/^I visit another user's listing$/) do
  another_user_listing
  visit listing_path @another_listing
end

Then(/^I should not see a delete button$/) do
  expect(page).not_to have_content 'Delete'
end

def user_listing
  @my_listing = Listing.create({
    description: 'Makers Notebook for sale',
    price: 0.35, 
    seller_id: @user.id, 
    picture: File.new(Rails.root.join('public/images/product_image.jpg'))
  })
end
  
def another_user_listing
  the_user2
  @another_listing = Listing.create({
    description: 'Not my listing',
    price: 0.35, 
    seller_id: @user2.id, 
    picture: File.new(Rails.root.join('public/images/product_image.jpg'))
  })
end

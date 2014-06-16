Then(/^I should see link "(.*?)"$/) do |link_name|
  expect(page).to have_link(link_name)
end

Given(/there is a listing/) do
  Listing.create(description: "an awesome red pen", price: "300", seller: the_user)
	expect(Listing.all.count).to eq 1
  expect(the_user.sales_listings.all.count).to eq 1
end

Given(/^I don't have any listings to sell$/) do
  the_user.sales_listings.destroy_all
  expect(the_user.sales_listings.all.count).to eq 0
end

Given(/^I have one item for sale$/) do
  Listing.create(description: "an awesome red pen", price: "300", seller: the_user)
  expect(the_user.sales_listings.all.count).to eq 1
end

Given(/^Louise makes a listing$/) do
  Louise_pen = Listing.create(description: "an awesome blue pen", price: "20", seller: the_user2) 
  expect(the_user2.sales_listings.all.count).to eq 1   
end

Given(/^I want the listing$/) do
  visit '/'
  click_on  Louise_pen.description
  expect(current_path).to eq listing_path  Louise_pen 
  click_on "I want it!"  
end

Given(/^Everyone logs out$/) do
  logout
end


#------ Stuff to do with Ollie
Given(/^Ollie is signed in$/) do
  login_as ollie
end

Given(/^Ollie doesn't have any listings to sell$/) do
  ollie.sales_listings.destroy_all
  expect(ollie.sales_listings.all.count).to eq 0
end

Given(/^Ollie visits "(.*?)"$/) do |page_name|
  visit "/#{page_name}"
end

Given(/^Ollie is signed in and on the homepage$/) do
  login_as ollie
  visit '/'
end

Given(/^Ollie is on the correct page to create a listing$/) do
  visit 'listings/new'
end

Then(/^Ollie should see "(.*?)"$/) do |stuff|
  expect(page.body).to have_content(stuff)
end

Then(/^Ollie should see link "(.*?)"$/) do |link_name|
  expect(page).to have_link(link_name)
end

Given(/^Ollie has one football for sale/) do
  @ollies_football = Listing.create(description: "a football", price: "2000", seller: ollie)
  expect(ollie.sales_listings.all.count).to eq 1
end

Given(/^Ollie has one football and one bike for sale$/) do
  Listing.create(description: "a football", price: "2000", seller: ollie)
  Listing.create(description: "fabulous bike", price: "999", seller: ollie)
  expect(ollie.sales_listings.all.count).to eq 2
end

def ollie
  @ollie ||= User.create(email:'ollie@ollie.com', password:'12345678', password_confirmation:'12345678', first_name:'Ollie', last_name:'Delevingne')
end

Given(/^Ollie visits the homepage$/) do
  visit '/'
end

Given(/^Ollie enters "(.*?)" in the search box$/) do |search_words|
  fill_in 'search', with: 'search_words', match: :first
  # click_on 'Search'
  find('.magnifying-btn').click
end

Then(/^Ollie should see Louise's notebook as a listing$/) do
  expect(page).to have_content(@louises_notebook.description)
end

Then(/^Ollie shouldn't see Steve's iphone as a listing$/) do
  expect(page).not_to have_content(@steves_iphone.description)
end

#------- Stuff to do with Louise
Given(/^Louise has one notebook for sale$/) do
  @louises_notebook = Listing.create(description: "my makers academy black notebook", price: "22", hashtag_names: "notebook, black", seller: louise)
  expect(louise.sales_listings.all.count).to eq 1 
end

Given(/^Louise logs in$/) do
  login_as louise
end

def louise
  @louise ||= User.create(email:'louise@ollie.com', password:'12345678', password_confirmation:'12345678', first_name:'Louise', last_name:'Lai')
end

def louises_notebook
  @louises_notebook = Listing.create(description: "my makers academy black notebook", price: "22", seller: louise) 
end

#------- Stuff to do with Steve
Given(/^Steve has an iphone for sale$/) do
  @steves_iphone = Listing.create(description: "an iphone", price: "50", seller: steve)
end

def steve
  @steve ||= User.create(email:'steve@ollie.com', password:'12345678', password_confirmation:'12345678', first_name:'steve', last_name:'Musgrave')
end


#--- a mixture of Ollie, Louise and Steve
Given(/^Ollie wants Louise's notebook$/) do
  visit '/'
  click_on(@louises_notebook.description)
  click_on("I want it!")
end

Given(/^Ollie wants Steve's iphone$/) do
visit '/'
  click_on(@steves_iphone.description)
  click_on("I want it!")  
end






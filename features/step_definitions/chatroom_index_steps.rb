Given(/^Louise has one bookshelf for sale$/) do
@louises_bookshelf = Listing.create(description: "Bookshelf", price: "100", hashtag_names: "book, shelf", seller: louise)
end

Given(/^Louise has one lamp for sale$/) do
  @louises_lamp = Listing.create(description: "Lamp", price: "100", hashtag_names: "lamp, i, love, lamp", seller: louise)
end

Given(/^Ollie has messaged Louise about her bookshelf$/) do
  @louises_bookshelf.chatroom.comments.create(body:'Hey, I wanna buy your bookshelf', user: @ollie)
end

Given(/^Ollie clicks the chatroom button$/) do
  page.find('#chatrooms-icon').click
  visit '/chatrooms'
end

Given(/^Ollie is the first to want both items$/) do
  @ollie.want_listings << @louises_notebook
  @ollie.want_listings << @louises_bookshelf
  Chatroom.create(listing:@louises_notebook)
  Chatroom.create(listing:@louises_bookshelf)
end

Given(/^Steve is the first to want Louise's lamp$/) do
  steve
  @steve.want_listings << @louises_lamp
  Chatroom.create(listing:@louises_lamp)
end


Given(/^Ollie is on the chatroom index$/) do
  expect(current_path).to eq chatrooms_path
end


Given(/^Louise is on the homepage$/) do
  visit '/'
end

Given(/^Louise clicks the chatroom button$/) do
  page.find('#chatrooms-icon').click
  visit '/chatrooms'
end

Given(/^Louise is on the chatroom index$/) do
  expect(current_path).to eq chatrooms_path
end

Then(/^Louise sees "(.*?)"$/) do |content|
  expect(page).to have_content(content)
end

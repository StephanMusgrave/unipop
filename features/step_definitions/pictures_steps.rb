Given(/^Shelley has one hamster for sale$/) do
Shelley_hamster = Listing.create(description: "a brown hamster", price: "1000", seller: shelley, picture: "spec/images/profile_picture.jpg")
end



Given(/^Ollie views Shelley's hamster$/) do
expect(page).to
end

Given(/^Ollie visits the hamster listing page$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^Ollie sees a picture$/) do
  pending # express the regexp above with the code you wish you had
end
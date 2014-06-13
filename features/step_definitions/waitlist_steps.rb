Given(/^Ollie is on his football's listing page$/) do
  visit "/listings/#{@ollies_football.id}"
end

Given(/^no users have clicked the want button on Ollie's football$/) do
  expect(@ollies_football.buyers.count).to eq 0
end

Given(/^one user has clicked the want button on Ollie's football$/) do
	shelley
  @shelley.want_listings << @ollies_football
  visit '/dashboard'
  expect(@ollies_football.buyers.count).to eq 1
end

Given(/^two users have clicked the want button on Ollie's football$/) do
  shelley
  @shelley.want_listings << @ollies_football
  louise
  @louise.want_listings << @ollies_football
  visit '/dashboard'
  expect(@ollies_football.buyers.count).to be > 1
end


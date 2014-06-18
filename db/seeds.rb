# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times do |i|
	puts "adding listing #{i}"
	listing = Listing.create(description: "Beautiful shoes #{i}")
	listing.image_containers << ImageContainer.create(picture: Rails.root.join('public/images/redshoes.jpg').open)
end
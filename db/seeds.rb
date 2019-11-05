# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


20.times do
Artist.create(name: Faker::Artist.name, bio: Faker::Cannabis.cannabinoid)
end

20.times do 
Song.create(name: Faker::Music.chord, artist_id: rand(1..20), genre_id: rand(1..20))
end

20.times do 
Genre.create(name: Faker::Music.genre)
end
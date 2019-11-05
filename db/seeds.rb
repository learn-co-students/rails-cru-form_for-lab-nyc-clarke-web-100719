# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do |t|
Artist.create(name: Faker::Artist.name, bio: Faker::GreekPhilosophers.quote)
end

10.times do |t|
    Genre.create(name: Faker::Music.genre)
end

10.times do |t|
    Song.create(name: Faker::Music::GratefulDead.song, artist_id: rand(1..10), genre_id: rand(1..10))
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times do
  Artist.create(
      name: Faker::Name.name,
      bio: Faker::Lorem.words(number: 10)
  )
end

10.times do
  Genre.create(
      name: Faker::Music.unique.genre
  )
end

50.times do
  Song.create(
      name: Faker::Name.name,
      artist_id: rand(1..50),
      genre_id: rand(1..10)
  )
end
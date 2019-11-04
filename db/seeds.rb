# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a1 = Artist.create(name: "Jack", bio: "A total fucking fool")

g1 = Genre.create(name: "pop")

s1 = Song.create(name: "Bad", artist_id: 1, genre_id: 1)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
g1 = Genre.create(name: "Harry Potter Music")
#
s1 = Song.create(name: "That cool Harry Potter Intro Theme", artist_id: 1, genre_id: 1)
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
a1 = Artist.create(name: "Harry Potter", bio: "All my friends are dead")
#   Mayor.create(name: 'Emanuel', city: cities.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#




a1 = Album.create title: Faker::Lorem.sentence(sentence_count=2), release_date: Date.today
a2 = Album.create title: Faker::Lorem.sentence(sentence_count=2), release_date: Date.today
# a3 = Album.create title: Faker::Lorem.sentence(sentence_count=2), genre: Faker::Lorem.word


5.times { a1.tracks << Track.create( title: Faker::Lorem.sentence(sentence_count=2), genre: Faker::Lorem.word)}

Track.create title: Faker::Lorem.sentence(sentence_count=2), genre: Faker::Lorem.word

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'json'
require 'open-uri'

movie_data = URI.open("https://tmdb.lewagon.com//movie/top_rated").read
movies = JSON.parse(movie_data)


10.times do
  movie = movies["results"][rand(5)]
  m = Movie.create({
        title: movie["original_title"],
        overview: movie["overview"],
        poster_url: movie["poster_path"],
        rating: movie["vote_average"]
    }
  )

  puts "#{m.title} created"
end

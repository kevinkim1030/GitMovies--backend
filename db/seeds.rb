# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Movie.destroy_all
Review.destroy_all

# user1 = User.create(name: "Kevin", tier: "Movie Fanatic")
# user2 = User.create(name: "Natalie", tier: "Movie Fanatic")

# movie1 = Movie.create(name: "Terminator", year: 2090, description: "so much action", rating: "G", image: "some image")
# movie2 = Movie.create(name: "Terminator 2", year: 1090, description: "so little action", rating: "PG", image: "some image")
# movie3 = Movie.create(name: "Terminator 3", year: 3090, description: "boring action", rating: "R", image: "some image")

# review1 = Review.create(text: "wow this movie was exciting!", user_id: 1, movie_id: 1)
# review2 = Review.create(text: "i fell asleep during the movie", user_id: 2, movie_id: 1)
# review3 = Review.create(text: "epic", user_id: 1, movie_id: 2)
# review4 = Review.create(text: "boring", user_id: 2, movie_id: 2)
# review5 = Review.create(text: "just wow", user_id: 1, movie_id: 3)
# review6 = Review.create(text: "idk what i just watched", user_id: 2, movie_id: 3)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


## Create 3 users
## Create 5 meals
## Create 2 reviews
User.destroy_all
Meal.destroy_all
Review.destroy_all

hans = User.create!(email: "x@x.com", password: "123456", first_name: "Hans", last_name: "de Bakker", phone_number: "+223 345646")
harry = User.create!(email: "y@y.com", password: "123456", first_name: "Harry", last_name: "Handvat", phone_number: "+223 345646")
greet = User.create!(email: "z@z.com", password: "123456", first_name: "Greet", last_name: "Vergeet", phone_number: "+223 345646")


potato = Meal.create!(title: "Amazing Potato Salad", description: "Contains a lot of stufffff", quantity: 4, start_date: "2016-12-22", end_date: "2016-12-24", creator_id: hans.id)
curry = Meal.create!(title: "Amazing Indian curry", description: "Contains a lot of stufffff", quantity: 3, start_date: "2016-12-27", end_date: "2016-12-29", creator_id: harry.id)
pasta = Meal.create!(title: "Amazing Italian pasta", description: "Contains a lot of stufffff", quantity: 5, start_date: "2016-12-26", end_date: "2016-12-29", creator_id: greet.id)
rice = Meal.create!(title: "Amazing Asian stir fry", description: "Contains a lot of stufffff", quantity: 6, start_date: "2016-12-29", end_date: "2016-12-30", creator_id: hans.id)
salad = Meal.create!(title: "Amazing skinny salad", description: "Contains a lot of stufffff", quantity: 3, start_date: "2016-12-27", end_date: "2016-12-29", creator_id: harry.id)

horrible = Review.create!(content: "OMG that was soooo horibble never again in my lifetime", stars: 1, meal_id: curry.id)
great = Review.create!(content: "OMG that was soooo amazing forever again in my lifetime", stars: 4, meal_id: potato.id)

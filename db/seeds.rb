# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new(
    id: 2,
    name: "Random User",
    email: "user@example.com",
    password: "password",
    password_confirmation: "password"
  )
  user.save!
  
  Product.create!([{
    title: "Watch",
    brand: "Fossil",
    model: "FH256",
    description: "Good watch for men!",
    condition: "Mint",
    finish: "Black",
    price: "100",
    image: Rails.root.join("app/assets/images/fossil.jpg").open,
    user_id: user.id
  },
  {
    title: "Car",
    brand: "Opel",
    model: "Corsa",
    description: "Cool red car",
    condition: "Excellent",
    finish: "Red",
    price: "15000",
    image: Rails.root.join("app/assets/images/opel.jpeg").open,
    user_id: user.id
  },
  {
    title: "Car",
    brand: "Ferrari",
    model: "F12",
    description: "Cool sports car",
    condition: "New",
    finish: "black",
    price: "160000",
    image: Rails.root.join("app/assets/images/ferrari.jpeg").open,
    user_id: user.id
  },
  {
    title: "Computer",
    brand: "Lenovo",
    model: "ThinkPad X1 Carbon Touch",
    description: "The Lenovo ThinkPad X1 Carbon Touch is an incredibly thin and light business ultrabook that features a premium design with a 14-inch touch.",
    condition: "Used",
    finish: "Black",
    price: "500",
    image: Rails.root.join("app/assets/images/computer.jpg").open,
    user_id: user.id
  } ])
require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store4 = Store.create do |u|
  u.name = "Surrey"
  u.annual_revenue = 224000
  u.mens_apparel = false
  u.womens_apparel = true
end

store5 = Store.create do |u|
  u.name = "Whistler"
  u.annual_revenue = 1900000
  u.mens_apparel = true
  u.womens_apparel = false
end

store6 = Store.create do |u|
  u.name = "Yaletown"
  u.annual_revenue = 430000
  u.mens_apparel = true
  u.womens_apparel = true
end

@mens_stores = Store.where(mens_apparel: true)

puts @mens_stores

@womens_stores = Store.where("annual_revenue > ?", 1000000, {womens_apparel: true} )

puts @womens_stores
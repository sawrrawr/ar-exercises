require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

store1 = Store.create do |u|
  u.name = "Burnaby"
  u.annual_revenue = 300000
  u.mens_apparel = true
  u.womens_apparel = true
end

store2 = Store.create do |u|
  u.name = "Richmond"
  u.annual_revenue = 1260000
  u.mens_apparel = false
  u.womens_apparel = true
end

store3 = Store.create do |u|
  u.name = "Gastown"
  u.annual_revenue = 190000
  u.mens_apparel = true
  u.womens_apparel = false
end

puts Store.count
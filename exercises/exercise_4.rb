require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"


[
  {
    name: "Burnaby",
    annual_revenue: 300000,
    mens_apparel: true,
    womens_apparel: true
  },
  {
    name: "Richmond",
    annual_revenue: 1260000,
    mens_apparel: false,
    womens_apparel: true
  },
  {
    name: "Gastown",
    annual_revenue: 190000,
    mens_apparel: true,
    womens_apparel: false
  },
  {
    name: "Surrey",
    annual_revenue: 224000,
    mens_apparel: false,
    womens_apparel: true
  },
  {
    name: "Whistler",
    annual_revenue: 1900000,
    mens_apparel: true,
    womens_apparel: false
  },
  {
    name: "Yaletown",
    annual_revenue: 430000,
    mens_apparel: true,
    womens_apparel: true
  }
].each do |store_attributes|
  Store.create!(store_attributes)
end

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts "#{store.name}, #{store.annual_revenue}"
end

@womens_stores = Store.where("womens_apparel = true AND annual_revenue < 1000000")
@womens_stores.each do |wstore|
  puts "#{wstore.name}, #{wstore.annual_revenue}"
end

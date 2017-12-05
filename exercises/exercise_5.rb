require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@revenue_sum = Store.sum :annual_revenue
@revenue_average = Store.average :annual_revenue
@revenue_over_million = Store.where("annual_revenue >= 1000000").size
puts @revenue_sum
puts @revenue_average
puts @revenue_over_million


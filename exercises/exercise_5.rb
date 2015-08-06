require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# 1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.
# 2. On the next line, also output the average annual revenue for all stores.
# 3. Output the number of stores that are generating $1M or more in annual sales. 
# **Hint:** Chain together `where` and `size` (or `count`) Active Record methods.

total_revenue = Store.sum('annual_revenue')
puts "Total revenue is #{total_revenue}" 

average_annual_revenue = total_revenue / Store.count
puts "Average annual revenue is #{average_annual_revenue}"

annual_sales = Store.where('annual_revenue > 1000000')

annual_sales.each do |store|
puts "Annual sales at #{store.name} is #{store.annual_revenue}"
end

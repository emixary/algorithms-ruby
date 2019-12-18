require_relative '../base-class/steque.rb'

test = Steque.new
test.add(1)
test.push(2)
test.push(3)
test.for_each do |i|
  puts i
end

puts 'pop'
test.delete_last
test.for_each do |i|
  puts i
end

puts 'enqueue'
test.enqueue
test.for_each do |i|
  puts i
end
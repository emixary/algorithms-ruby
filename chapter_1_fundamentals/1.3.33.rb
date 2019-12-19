require_relative '../base-class/deque.rb'

test = Deque.new
test.push_right(1)
test.push_right(2)
test.push_right(3)
test.push_left(4)
test.push_left(5)
test.for_each do |i|
  puts i
end
test.for_each_from_last do |i|
  puts i
end
puts '-----'
puts 'pop'
test.pop_left
test.pop_left
test.for_each do |i|
  puts i
end
test.pop_right
test.for_each do |i|
  puts i
end
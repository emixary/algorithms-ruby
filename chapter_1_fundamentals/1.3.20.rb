require_relative  '../base-class/linked_list.rb'
class Test < LinkedList
end

test = Test.new
test.add(1)
test.add(2)
test.add(3)
test.add(5)
test.delete(2)
test.for_each do |i|
  puts i
end
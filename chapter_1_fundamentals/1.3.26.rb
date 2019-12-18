require_relative  '../base-class/linked_list.rb'
class Test < LinkedList
end

test = Test.new
test.add(10)
test.add(10)
test.add(30)
test.add(40)
test.add(50)
test.remove(50)
test.for_each do |i|
  puts i
end

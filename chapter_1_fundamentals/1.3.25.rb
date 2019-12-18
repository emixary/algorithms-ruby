require_relative  '../base-class/linked_list.rb'
class Test < LinkedList
end

test = Test.new
test.add(1)
test.add(2)
test.add(3)
test.add(5)
h = test.head
n1 = Node.new(22)
test.insert_after(h, n1)
test.for_each do |i|
  puts i
end
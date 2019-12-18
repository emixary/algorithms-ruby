require_relative  '../base-class/linked_list.rb'
class Test < LinkedList
end

test = Test.new
test.add(1)
test.add(22)
test.add(555)
test.add(11515)
test.add(123111)
test.delete(1)
test.for_each do |i|
  puts i
end
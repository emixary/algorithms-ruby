require_relative  '../base-class/linked_list.rb'
class Test < LinkedList
end

test = Test.new
test.add(100)
test.add(102)
test.add(80)
test.add(40)
test.add(50)
puts test.max()

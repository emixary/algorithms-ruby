require_relative  '../base-class/linked_list.rb'
class Test < LinkedList
end

test = Test.new
test.add(10)
test.add(20)
test.add(30)
test.add(40)
test.add(50)
test.delete_last
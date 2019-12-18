require_relative  '../base-class/circular_linked_list.rb'

test = CircularLinkedList.new
test.add(1)
test.add(5)
test.add(2)
last = test.last
puts last.next.next.next.next.value
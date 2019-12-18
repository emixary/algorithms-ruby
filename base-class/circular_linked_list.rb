require_relative  'linked_list.rb'
class CircularLinkedList
  def initialize
    @size = 0
    @last = Node.new
    @last.set_next(@last)
  end
  
  def is_empty
    return @size == 0
  end

  def size
    @size
  end

  def last
    @last
  end

  def add(val)
    if is_empty
      @last.set_value(val)
      @last.set_next(@last)
    else
      index = @last
      while(index.next != @last)
        index = index.next
      end
      index.set_next(Node.new)
      index = index.next
      index.set_value(val)
      index.set_next(@last)
    end
    @size += 1
  end

  def for_each
    index = @last
    yield @last.value
    index = @last.next
    while(index != @last)
      value = index.value
      index = index.next
      yield value
    end
  end
end
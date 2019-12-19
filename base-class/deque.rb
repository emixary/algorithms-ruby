require_relative 'linked_list.rb'
class Deque < LinkedList
  def initialize(val = nil, nextNode = nil, preNode = nil)
    super()
    @tail = @head 
  end
  
  def tail
    @tail
  end
  
  def push_left(val)
    if is_empty
      @head.set_value(val)
    else
      index = @head
      index.set_pre(Node.new)
      @head = index.pre
      @head.set_value(val)
      @head.set_next(index)
    end 
  end

  def push_right(val)
    if is_empty
      @head.set_value(val)
    else
      index = @tail
      index.set_next(Node.new)
      @tail = index.next
      @tail.set_value(val)
      @tail.set_pre(index)
    end
    @size += 1
  end

  def pop_left
    if is_empty
      puts 'is empty deque'
      return
    else
      index = @head.next
      index.set_pre(nil)
      @head = index 
    end
  end

  def pop_right
    if is_empty
      puts 'is empty deque'
      return
    else
      index = @tail.pre
      index.set_next(nil)
      @tail = index
    end
  end

  def for_each_from_last
    index = @tail
    while (index != nil)
      value = index.value
      index = index.pre
      yield value
    end
  end
end

require_relative  'double_node'
class DoubleLinkedList
  def initialize
    @size = 0
    @head = DoubleNode.new
    @last = DoubleNode.new
  end
  
  def is_empty
    return @size == 0
  end

  def size
    @size
  end

  def head
    @head
  end

  def last
    @last
  end

  def add(val)
    if is_empty
      @head.set_value(val)
      @head.set_next(nil)
      @last = @head
    else
    end
    @size += 1
  end

  def for_each
  end
end
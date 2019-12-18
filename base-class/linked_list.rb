class Node
  def initialize(val = nil, nextNode = nil)
    @value = val
    @next = nextNode
  end

  def value
    @value
  end

  def next
    @next
  end

  def set_value(val)
    @value = val
  end
  def set_next(nextNode)
    @next = nextNode
  end
end

class LinkedList
  def initialize
    @size = 0
    @head = Node.new
  end

  def is_empty
    return @size == 0
  end

  def size
    @size
  end

  def add(val)
    if is_empty
      @head.set_value(val)
      @head.set_next(nil)
    else
      index = @head
      while(index.next != nil)
        index = index.next
      end
      index.set_next(Node.new)
      index = index.next
      index.set_value(val)
      index.set_next(nil)
    end
    @size += 1
  end

  def delete_last
    index = @head
    preIndex = index
    while(index.next != nil)
      preIndex = index
      index = index.next
    end
    preIndex.set_next(nil)
    @size -= 1
  end

  def delete(k)
    if (k > @size)
      puts 'over size'
      return
    else
      index = @head
      preIndex = index
      for i in 1..k-1
        preIndex = index
        index = index.next
      end
      nextIndex = index.next
      preIndex.set_next(nextIndex)
    end
  end

  # def deleteNote(node)
  #   if (node != nil && node.next != nil)
  #     nextNode = node.next
  #     node
  #   end
  # end

  def remove_after(node)
    if (node !=nil && node.next != nil)
      node.set_next(nil)
    end
  end
  
  def insert_after(left, right)
    if (left != nil && right != nil)
      leftNext = left.next
      left.set_next(right)
      right.set_next(leftNext)
    end
  end

  def remove(key)
    index = @head
    while(index != nil)
      if (index == @head && index.value == key)
        @head = index.next
        index = @head
      elsif (index.next && index.next.value == key)
        index.set_next(index.next.next)
      else
        index = index.next
      end
    end
  end

  def max
    maxValue = 0
    index = @head
    while(index != nil)
      if (index.value > maxValue)
        maxValue = index.value
      end
      index = index.next
    end
    return maxValue
  end

  def recurse_max()
    return compare(@head, 0)
  end

  def compare(index, value)
    if (index)
      return compare(index.next, index.value > value ? index.value : value)
    else
      return value
    end
  end


  def for_each_node
    index = @head
    while(index != nil)
      yield index
      index = index.next
    end
  end

  def for_each
    index = @head
    while(index != nil)
      value = index.value
      index = index.next
      yield value
    end
  end

  def head
    @head
  end
end
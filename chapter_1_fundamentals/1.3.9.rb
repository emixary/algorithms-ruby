class Stack
  def initialize()
    @n = 0
    @first = Node.new()
  end

  class Node
    @item
    @next
    def initialize(val = nil, nextNode = nil)
      @item = val
      @next = nextNode
    end

    def item
      return @item
    end

    def next
      return @next
    end
  end
  
  def is_empty
    return @n == 0
  end

  def size
    return @n
  end

  def push(val)
    old_first = @first
    @first = Node.new(val, old_first)
    @n += 1
  end

  def pop()
    item = @first.item
    @first = @first.next
    @n -= 1
    return item
  end

  def for_each
    index = @first
    while(index != nil)
      item = index.item
      index = index.next
      yield item
    end
  end

  def peek
    return @first.item
  end
end

operate = Stack.new
val = Stack.new
test = '1+2)*3-4)*5-6)))'
result = ''
test.each_char do |i|
  if (i == '0' or i.to_i != 0)
    val.push(i)
  elsif (i == ')')
    x = operate.pop() + val.pop() if (!operate.is_empty and !val.is_empty)
    x = '(' + val.pop() + x + ')' if !val.is_empty
    val.push(x)
    result = x
  else
    operate.push(i)
  end
end
puts result



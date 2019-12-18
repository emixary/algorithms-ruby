class Parentheses
  MATCH = {
    ']' => '[',
    ')' => '(',
    '}' => '{'
  }
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

  def match(val)
    return MATCH[val] == @first.item
  end

  def peek
    return @first.item
  end
end

stack = Parentheses.new()
# test = '[()]{}{[()()]()}'
test = '[(])'
test.each_char do |i|
  if (stack.is_empty || !stack.match(i))
    stack.push(i)
  else
    stack.pop
  end
end


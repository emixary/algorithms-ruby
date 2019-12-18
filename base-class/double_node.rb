class DoubleNode
  def initialize(val = nil, nextNode = nil, preNode = nil)
    @value = val
    @next = nextNode
    @pre = preNode
  end

  def value
    @value
  end

  def next
    @next
  end

  def pre
    @pre
  end

  def set_value(val)
    @value = val
  end

  def set_next(nextNode)
    @next = nextNode
  end

  def set_pre(preNode)
    @pre = preNode
  end
end


class VisualCounter
  @n
  @max
  def initialize(n, max)
    @n = n
    @max = max
    @operateTimes = 0
    @counter = 0
  end
  def add_one
    if (@operateTimes < @n && @counter + 1 <= @max)
      @operateTimes += 1
      @counter += 1
      puts @counter
    else
      puts 'error'
    end
  end
  
  def sub_one
    if (@operateTimes < @n && (@counter - 1).abs <= @max)
      @operateTimes += 1
      @counter -= 1
      puts @counter
    else
      puts 'error'
    end
  end
end

test = VisualCounter.new(3, 5)
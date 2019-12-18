class Interval1D
  @low
  @high
  def initialize(low, high)
    @low = low
    @high = high
  end

  def getLow
    return @low
  end

  def getHigh
    return @high
  end
end

arr = []
N = 3
(1..N).each do |i|
  low = (rand * 100).round
  high = (rand * 100).round
  if (low > high)
    low, high = high, low
  end
  puts low.to_s + '&' + high.to_s
  item = Interval1D.new(low, high)
  arr.push(item)
end

len = arr.length - 1
for i in 0..len do
  for j in (i+1)..len do
    if (!(arr[i].getLow > arr[j].getHigh || arr[i].getHigh < arr[j].getLow))
      puts arr[i].getLow.to_s + ',' + arr[i].getHigh.to_s + '交' + arr[j].getLow.to_s + ',' + arr[j].getHigh.to_s
    end
  end
end
  
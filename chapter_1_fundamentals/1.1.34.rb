class Filter
  @@arr = Array.new()
  @@sort_arr = Array.new()
  def initialize(n)
    @@arr = Array.new(n)
    @@arr.each_index do |i|
      @@arr[i] = rand
    end
    @@sort_arr = @@arr.sort
    print 'arr'
    p @@arr
  end

  def max_and_min
    max_num = 0
    min_num = 1
    @@arr.each do |i|
      if i > max_num
        max_num = i
      end
      if i < min_num
        min_num = i
      end
    end
    return [max_num, min_num]
  end
  
  def median
    if @@sort_arr.length % 2 == 0
      return (@@sort_arr[@@sort_arr.length / 2] + @@sort_arr[@@sort_arr.length / 2 - 1]) / 2
    else
      return @@sort_arr[@@sort_arr.length / 2]
    end
    return @@sort_arr
  end

  def min(k = 100)
    return @@sort_arr[k - 1]
  end

  def avg()
    sum = 0
    @@arr.each do |i|
      sum += i
    end
    return sum / @@arr.length
  end

  def over_avg_percent()
    avg = avg()
    sum_of_over_avg= 0
    @@arr.each do |i|
      if i > avg
        sum_of_over_avg += 1
      end
    end
    return sum_of_over_avg.to_f / @@arr.length
  end
end

N = gets.to_i
f = Filter.new(N)
p f.over_avg_percent

class SortExample
  def exch (a, i, j)
    t = a[i]
    a[i] = a[j]
    a[j] = t
  end

  def show (a)
    # a.each do |i|
    #   puts i
    # end
    puts a.join(',')
  end

  def isSorted (a)
    a.each_index do |i|
      next if (i === 0)
      if (a[i] < a[i-1])
        return false
      end
    end
    return true
  end
end

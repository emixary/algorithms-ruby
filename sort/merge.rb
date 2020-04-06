require_relative  'sort.rb'

$e = SortExample.new
a = 'MERGESORTEXAMPLE'.chars

def merge(a, low, mid, high)
  i = low
  j = mid + 1
  copy = a.dup
  for index in low..high 
    if (i > mid)
      a[index] = copy[j]
      j += 1
    elsif (j > high)
      a[index] = copy[i]
      i += 1
    elsif (copy[i] < copy[j])
      a[index] = copy[i]
      i += 1
    else
      a[index] = copy[j]
      j += 1
    end
  end
end

def $e.merge_sort(a, low, high)
  return if (low >= high)
  mid = low + ((high - low) / 2)
  self.merge_sort(a, low, mid)
  self.merge_sort(a, mid + 1, high)
  merge(a, low, mid, high)
end

def $e.sort(a)
  self.merge_sort(a, 0, a.size - 1)
end

$e.show(a)
$e.sort(a)
$e.show(a)
require_relative  'sort.rb'

$e = SortExample.new
a = 'QUICKSORTEXAMPLE'.chars

def partition(a, low, high)
  p = a[low]
  left_index = low + 1
  right_index = high 
  while left_index < right_index do
    while a[right_index] && a[right_index] > p && left_index <= right_index do
      right_index -= 1
    end
    while a[left_index] && a[left_index] < p && left_index <= right_index do
      left_index += 1
    end
    self.exch(a, left_index, right_index) if left_index < right_index
  end
  self.exch(a, low, right_index)
  return right_index
end

def $e.quick_sort(a, low, high)
  return if (low >= high)
  p = partition(a, low, high)
  self.quick_sort(a, low, p - 1)
  self.quick_sort(a, p + 1, high)
end


def $e.sort(a)
  self.quick_sort(a, 0, a.size - 1)
end


$e.show(a)
$e.sort(a)
$e.show(a)
require_relative  'sort.rb'

e = SortExample.new
a = 'SHELLSORTEXAMPLE'.chars

def e.sort(a)
  h = 1
  while (h < a.size / 3) do
    h = h * 3 + 1
  end
  while (h >= 1) do
    i = a.size - 1
    while (i - h >= 0) do
      j = i 
      while (j - h >= 0) do
        if (a[j] < a[j - h])
          self.exch(a, j, j - h)
        end
        j -= h
      end
      i -= 1 
    end
    h /= 3
  end
end

e.show(a)
e.sort(a)
e.show(a)
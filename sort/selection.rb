
require_relative  '../sort/sort.rb'

e = SortExample.new
a = [3,2,1,5,4]

def e.sort(a)
  for i in 0...a.size
    min = i
    for j in i...a.size
      if (a[j] < a[min])
        min = j
      end
    end
    self.exch(a, i, min)
  end
end

e.show(a)
e.sort(a)
e.show(a)
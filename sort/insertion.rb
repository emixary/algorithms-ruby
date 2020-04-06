require_relative  '../sort/sort.rb'

e = SortExample.new
a = [2,3,1,5,4,6]

def e.sort(a)
  for i in 0...a.size
    j = i
    while j > 0 do 
      if (a[j] < a[j - 1])
        self.exch(a, j, j - 1)
      end
      j -= 1
    end
  end
end

e.show(a)
e.sort(a)
e.show(a)
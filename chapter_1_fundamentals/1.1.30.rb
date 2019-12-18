# N = gets.to_i
# def relatively_prime_array(n)
#   arr = Array.new(n, Array.new(n, 0))
#   arr.each_index do |i|
#     arr[i].each_index do |j|

#     end
#   end
# end
# relatively_prime_array(N)
require_relative '1.1.24_euclid.rb'
class RelativelyPrimeArray
include Euclid
def relatively_prime_array()
  n = gets.to_i
  arr = 0.upto(n - 1).map { [0] * n }
  arr.each_index do |i|
    arr[i].each_index do |j|
      if (Euclid.gcd(i, j) > 1)
        arr[i][j] = true
      else
        arr[i][j] = false
      end
    end
  end
end
end

rpa = RelativelyPrimeArray.new
result = rpa.relatively_prime_array()
print result
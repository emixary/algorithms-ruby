module Euclid
  def Euclid.gcd(a, b)
    if a == 0 or b == 0
      return 0
    end
    if a % b == 0
      return b
    else
      gcd(b, a % b)
    end 
  end
end
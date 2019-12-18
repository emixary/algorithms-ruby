a = [1,2,3,13,1,1123,2,3,3]
M = 5
arrayM = Array.new(M)
arrayM.each_index do |index|
  count = 0
  a.each do |i|
    if i == index
      count +=1
    end
  end
  arrayM[index] = count
end
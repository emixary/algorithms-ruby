a = [[false ,true ,true], [true , false ,false], [true, true, false]]
a.each_index do |row|
    a[row].each_index do |col|
       output = a[row][col] ? '*' : ' '
       print(row, '-', col, ":", output,"\n")
    end
end
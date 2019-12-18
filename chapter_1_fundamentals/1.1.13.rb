require 'matrix'
a = [[11 , 12, 13, 14], [ 21, 22 , 23, 24], [31, 32, 33, 34]]
b = []
a.each_index do |row|
    a[row].each_index do |col|
        if (row == 0)
            b.push([])
        end
        b[col][row] = a[row][col]
    end
end
print(b)
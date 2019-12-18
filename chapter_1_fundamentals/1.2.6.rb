s = 'ACTGACG'
t = 'TGACGAC'
pos = 0
if s.length == t.length
  (0..s.length-1).each do |i|
    if t.index(s[0..i]) != nil
      pos = i
    end
  end
  if t.index(s[pos + 1, s.length]) === 0
    puts 1
  end
end
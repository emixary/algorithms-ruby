def mystery(a)
  n = a.length
  return a if (n <= 1)
  left = a[0..(n/2-1)]
  right = a[n/2..(n-1)]
  return mystery(right) + mystery(left)
end

puts mystery('1234taa')
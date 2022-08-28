a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
d = gets.split.map(&:to_i)

s = (c[0] - a[0]) * (b[1] - a[1]) - (c[1] - a[1]) * (b[0] - a[0])
t = (c[0] - a[0]) * (d[1] - a[1]) - (c[1] - a[1]) * (d[0] - a[0])
u = (d[0] - b[0]) * (a[1] - b[1]) - (d[1] - b[1]) * (a[0] - b[0])
v = (d[0] - b[0]) * (c[1] - b[1]) - (d[1] - b[1]) * (c[0] - b[0])

if (s * t < 0) && (u * v < 0)
  puts 'Yes'
else
  puts 'No'
end

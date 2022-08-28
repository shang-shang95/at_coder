s = gets.to_s.chomp
l = s.length
if l == 1
  puts s
else
  puts s[((l + 1) / 2) - 1]
end

s = gets.chomp

s.gsub!('dream', '')
s.gsub!('dreamer', '')
s.gsub!('erase', '')
s.gsub!('eraser', '')

puts s.empty? ? 'YES' : 'NO'

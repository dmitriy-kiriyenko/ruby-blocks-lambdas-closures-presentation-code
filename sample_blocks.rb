# Simple block
5.times do
  str = "Hello world."
  puts str
end

# Simple block with closure
str_ext = "Hello"
5.times do
  str = "world."
  puts "#{str_ext} #{str}"
end

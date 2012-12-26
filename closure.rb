def create_counter(start)
  value = start
  {inc: ->{value+=1}, dec: ->{value-=1}, get: ->{value}}
end

counter = create_counter(500)

counter[:inc].call
puts counter[:get].call #=> 501
10.times { counter[:dec].call }
puts counter[:get].call #=> 491

def get_helloer
  str_ext = "Hello"
  res = lambda do |who|
    puts "#{str_ext} #{who}!"
  end
  str_ext = "Goodbye"
  res
end

helloer = get_helloer
helloer.call('there')

def get_helloer
  str_ext = "Hello"
  lambda do |who|
    puts "#{str_ext} #{who}!"
  end
end

helloer = get_helloer
helloer.call('there')

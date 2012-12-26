require 'benchmark'
require 'benchmark/ips'

Benchmark.ips do |b|
  b.report 'while' do
    sum = 0; i = 0
    while i <= 10
      sum += i; i += 1
    end
  end

  b.report 'block' do
    sum = 0
    (1..10).each do |i|
      sum += 1
    end
  end

  b.report 'reduce' do
    (1..10).reduce {|acc, i| acc+i}
  end
end

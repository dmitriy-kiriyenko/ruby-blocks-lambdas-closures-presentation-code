require 'benchmark/ips'

def do_with_block
  yield
end

def do_with_lambda(&block)
  block.call
end

Benchmark.ips do |b|
  b.report 'block' do
    do_with_block { 1+1 }
  end

  b.report 'lambda' do
    do_with_lambda {1+1}
  end
end

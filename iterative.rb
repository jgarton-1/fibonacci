def fib_iterate(num)
  a = 0
  b = 1

  while b < num do
    puts b
    a,b = b, a + b
    #why does this yeild different reseults?
  #   tmp = a + b
  #   a = b
  #   b = tmp
  # end
end

fib_iterate(9)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  #x.report("recursive_fib") { recursive_fib(num) }
  x.report("fib_iterate")  { fib_iterate(num)  }
end
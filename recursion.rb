def fib_recursion(n)
  return n if n <= 1
  fib_recursion(n-1) + fib_recursion(n-2)
end

puts fib_recursion(10)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("fib_recursion") { fib_recursion(num) }
  #x.report("fib_iterate")  { fib_iterate(num)  }
end
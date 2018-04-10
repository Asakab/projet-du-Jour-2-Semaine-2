m = 0

(1...1000).each { |i|
  m += i if (i%3 == 0|| i%5 == 0) }

puts m

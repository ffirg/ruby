#!/usr/bin/env ruby

# example class with one arg
def sayGoodnight(name)
  result = "Goodnight, " + name
  return result
end

# example help class showing filename in output
def help
  print "You must pass an argument
  Usage: #{__FILE__} something...
"
end

# Time for bed...
puts sayGoodnight("John-Boy")
puts sayGoodnight("Mary-Ellen")

# checking no. cmd line args passed
unless ARGV.size > 0
  help
  exit
end

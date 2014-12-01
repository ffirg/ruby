#!/usr/bin/env ruby

def workitout()
  arg1, arg2 = ARGV
  a = arg1
  b = arg2

  if a > b
    puts "First number is Bigger"
  elsif
    a == b
    puts "They are Equal"
  else
    puts "First number is Smaller"
  end
end

workitout()

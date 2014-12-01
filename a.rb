#!/usr/bin/env ruby

#foo = ARGV.first
#puts "Hello #{foo}"

#print "How many cars? " 
#cars = $stdin.gets.chomp
#puts "I have #{cars} cars."

print "File? "
filename = $stdin.gets.chomp
file = open(filename).read

puts "The file is #{file.length} bytes long"

newfile = "foo"

nfile = open(newfile, 'w')
file.write(nfile)

puts "The new file is #{nfile.length} bytes long"

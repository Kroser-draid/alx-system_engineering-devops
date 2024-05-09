#!/usr/bin/env ruby
# this is my first ruby code

if ARGV.length != 1
    puts "Please provide exactly one argument."
      exit
end
input_argument = ARGV[0]
pattern = /School/
input_argument.scan(pattern) do |match|
    print "#{match}"
end
print "\n"
puts "" if input_argument.scan(pattern).empty?

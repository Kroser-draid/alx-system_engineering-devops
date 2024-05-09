#!/usr/bin/env ruby
source = ARGV[0]
pattern = /[A-Z]/
source.scan(pattern) do |match|
  print "#{match}"
end
print "\n"
puts "" if source.scan(pattern).empty?

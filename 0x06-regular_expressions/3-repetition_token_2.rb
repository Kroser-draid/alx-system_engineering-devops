#!/usr/bin/env ruby
pattern = /hbt+n/
source = ARGV[0]
source.scan(pattern) do |match|
  print "#{match}"
end
print "\n"
puts "" if source.scan(pattern).empty?

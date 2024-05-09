#!/usr/bin/env ruby
sender = /(?<=from:)[^\]]*/
receiver = /(?<=to:)[^\]]*/
flags = /(?<=flags:)[^\]]*/
source = ARGV[0]
source.scan(sender) do |match_sender|
  print "#{match_sender},"
end
source.scan(receiver) do |match_receiver|
  print "#{match_receiver},"
end
source.scan(flags) do |match_flags|
  print "#{match_flags}"
end
print "\n"
puts "" if source.scan(sender).empty? && source.scan(receiver).empty? && source.scan(flags).empty?

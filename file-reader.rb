#!/usr/bin/env ruby

filename = ARGV[0]
selection = ARGV[1]
array = Array.new

File.open(filename) do |f|
  f.each_line.lazy.each do |line|
    array << line
    puts array.size
  end
end

puts array.join(' ')
puts selection

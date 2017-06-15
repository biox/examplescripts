#!/usr/bin/env ruby

filename = ARGV[0]
selection = ARGV[1].to_i
array = Array.new

File.open(filename) do |f|
  f.each_line do |line|
    array << line.to_i
    if array.size > selection
      array = array.sort.drop(1)
    end
  end
  puts array.sort.join(' ')
end

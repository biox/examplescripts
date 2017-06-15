#!/usr/bin/env ruby

filename = ARGV[0]
selection = ARGV[1].to_i
array = Array.new

File.open(filename) do |f|
  f.each_line.lazy.each do |line|
    array << line
    if array.size.to_i > selection
      array.sort.drop(1)
    end
  end
  puts array.join(' ')
end

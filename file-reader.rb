#!/usr/bin/env ruby

array = ['something','else']

File.open('largefile') do |f|
  f.each_line.lazy.select { |line| line.match(/stuff/i) }.first(5)
  puts array.join(' ')
end

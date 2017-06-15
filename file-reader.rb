#!/usr/bin/env ruby
# TODO: make args
File.open('largefile') do |file|
  file.each_line do |line|
    puts line
  end
end

#!/usr/bin/env ruby

dir = Dir.new('.')
dirs = [ ]
dir.sort.each { |f| dirs << f  if /[0-9][0-9]_.*/ === f }

entries = [ ]

dirs.each do |d|
    File.open(d + '/readme.md').each do |line|
        if /^# (.*)/ === line
            entries << [ d, $1 ]
        end
    end
end

puts ""

entries.each_with_index do |e, i|
    puts "  #{i + 1}. [#{e[1]}](#{e[0]}/readme.md)"
end

puts ""

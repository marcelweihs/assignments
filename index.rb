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

# Read schedule
dates = [ ]
File.open('termine.txt').each do |line|
    dates << line.chop
end

puts "| # | Datum | Thema | Übungen |"
puts "|---|-------|-------|----------|"


entries.each_with_index do |e, i|
    puts "| #{i + 1}. | #{dates[i]} | [#{e[1]}](#{e[0]}/readme.md) | [Übungen](#{e[0]}/exercise.md) |"
end

puts ""

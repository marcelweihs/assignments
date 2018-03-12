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

puts "| # | Thema | Einführung | Aufgaben |"
puts "|---|-------|------------|----------|"


entries.each_with_index do |e, i|
    puts "| #{i + 1}. | #{e[1]} | [Beschreibung](#{e[0]}/readme.md) | [Aufgaben](#{e[0]}/exercise.md) |"
end

puts "\n\n## Aufgaben\n"
puts ""

entries.each_with_index do |e, i|
    puts "  #{i + 1}. [#{e[1]}](#{e[0]}/exercise.md)"
end

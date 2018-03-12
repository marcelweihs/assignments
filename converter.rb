#!/usr/bin/env ruby
status = :undefined

puts '# Übungen'

File.open(ARGV[0]).each do |line|
    if /^#### (.*)/ === line
        status = :exercise
        title = $1
        puts "\n#### #{title}"
    elsif /^---/ =~ line && status == :exercise
        status = :undefined
    elsif status == :exercise
        puts line
    end
end

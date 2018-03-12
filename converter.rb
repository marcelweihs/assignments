#!/usr/bin/env ruby
status = :undefined

counter = 1

File.open(ARGV[0]).each do |line|
    if /^# (.*)/ === line
        puts line
    elsif /^#### (.*)/ === line
        status = :exercise
        title = $1
        puts "\n#### #{counter}. #{title}"
        counter = counter + 1
    elsif /^---/ =~ line && status == :exercise
        status = :undefined
    elsif status == :exercise
        puts line
    end
end

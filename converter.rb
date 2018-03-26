#!/usr/bin/env ruby
status = :undefined

counter = 1

File.open(ARGV[0]).each do |line|
    if /^# (.*)/ === line
        puts line
        status = :frontmatter
    elsif /^#### (.*)/ === line
        status = :exercise
        title = $1
        puts "\n#### #{counter}. #{title}"
        counter = counter + 1
    elsif /^---/ =~ line && status == :exercise
        status = :undefined
    elsif /^<!-- Spacing: ([0-9]*) -->/ =~ line
        puts '<div style="border: 1px solid grey;">'
        $1.to_i.times { puts '<br>' }
        puts '</div>'
    elsif status == :exercise || status == :frontmatter
        puts line
    end
end

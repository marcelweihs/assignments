#!/usr/bin/env ruby

def decrypt(input)
    (input.each_char.map do |c|
        case c
          when ('a'..'z') then ('a'.ord + (c.ord - 'a'.ord + 13) % 26).chr
          when ('A'..'Z') then ('A'.ord + (c.ord - 'A'.ord + 13) % 26).chr
          else c
        end
    end).reduce(''){ |a, b| a + b }
end

puts decrypt('Fb, wrgmg unora Fvr nhpu rva ynhsraqrf Ehol-Cebtenzz.')

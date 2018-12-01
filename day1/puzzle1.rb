#!/usr/bin/ruby
frequency = 0
IO.foreach("input.txt") { |line|
  prev_freq = frequency
  change = line[1..-1].to_i
  if line[0] == '+'
    frequency += change
  else
    frequency -= change
  end
  puts "Current frequency " + prev_freq.to_s + ", change of " + line[0].to_s + change.to_s +
      "; resulting frequency " + frequency.to_s
}
puts frequency

#!/usr/bin/ruby
def find_repetition
  freq_list = [0]
  frequency = 0
  result = 0

  while true
    IO.foreach("input.txt") { |line|
      prev_freq = frequency
      change = line[1..-1].to_i

      frequency += change if line[0] == '+'
      frequency -= change if line[0] == '-'

      puts "Current frequency " + prev_freq.to_s + ", change of " + line[0].to_s + change.to_s +
          "; resulting frequency " + frequency.to_s

      return frequency.to_s if freq_list.include? frequency
      freq_list.push(frequency)
    }
  end
end

puts "The first frequency appearing twice is " + find_repetition

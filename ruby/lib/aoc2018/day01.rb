require 'set'

module Aoc2018
  class Day01
    def self.part_one(input)
      input.split("\n").map(&:to_i).sum
    end

    def self.part_two(input)
      freqs = Set[]
      current = 0
      i = 0
      input = input.split("\n").map(&:to_i)
      while freqs.add?(current)
        current += input[i % input.length]
        i += 1
      end
      current
    end
  end
end

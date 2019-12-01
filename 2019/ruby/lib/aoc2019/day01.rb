module Aoc2019
  class Day01
    def self.line(input)
      (input / 3).round(half: :down) - 2
    end

    def self.part_one(input)
      input.split.map{ |x| line(x.to_i) }.sum
    end

    def self.part_two(_input)
      :incomplete
    end
  end
end

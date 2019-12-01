module Aoc2019
  class Day01
    def self.line(input)
      (input / 3).round(half: :down) - 2
    end

    def self.part_one(input)
      input.split.map { |x| line(x.to_i) }.sum
    end

    def self.line2(mass, sum = 0)
      new_mass = line(mass)
      return sum if new_mass <= 0

      line2(new_mass, sum + new_mass)
    end

    def self.part_two(input)
      input.split.map { |x| line2(x.to_i) }.sum
    end
  end
end

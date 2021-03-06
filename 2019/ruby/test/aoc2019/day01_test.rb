require 'minitest/autorun'
require_relative '../../lib/aoc2019/day01.rb'

module Aoc2019::Test
  class Day01 < MiniTest::Test
    def part_one_line
      assert_equal 2, Aoc2019::Day01.line(12)
      assert_equal 2, Aoc2019::Day01.line(14)
      assert_equal 654, Aoc2019::Day01.line(1969)
      assert_equal 33583, Aoc2019::Day01.line(100756)
    end

    def test_part_one
      assert_equal 34241, Aoc2019::Day01.part_one("12\n14\n1969\n100756\n")
    end

    def test_part_two_line
      assert_equal 2, Aoc2019::Day01.line2(12)
      assert_equal 2, Aoc2019::Day01.line2(14)
      assert_equal 966, Aoc2019::Day01.line2(1969)
      assert_equal 50346, Aoc2019::Day01.line2(100756)
    end

    def test_part_two
      assert_equal 51316, Aoc2019::Day01.part_two("12\n14\n1969\n100756\n")
    end
  end
end

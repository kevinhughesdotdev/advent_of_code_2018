require 'minitest/autorun'
require_relative '../../lib/aoc2018/day01.rb'

module Aoc2018::Test
  class Day01 < MiniTest::Test
    def test_part_one
      assert_equal Aoc2018::Day01.part_one("+1\n-2\n+3\n+1"), 3
      assert_equal Aoc2018::Day01.part_one("+1\n+1\n+1"), 3
      assert_equal Aoc2018::Day01.part_one("+1\n+1\n-2"), 0
      assert_equal Aoc2018::Day01.part_one("-1\n-2\n-3"), -6
    end

    def test_part_two
      assert_equal Aoc2018::Day01.part_one(nil), :incomplete
    end
  end
end

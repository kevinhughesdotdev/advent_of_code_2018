defmodule Aoc2018.Day11Test do
	use ExUnit.Case

	test "Part One" do
		assert Aoc2018.Day11.part_one("5468") == "493,64"
	end

	test "power level" do
		assert Aoc2018.Day11.power_level(3,5,8) == 4
		assert Aoc2018.Day11.power_level(122, 79, 57) == -5
		assert Aoc2018.Day11.power_level(217, 196, 39) == 0
		assert Aoc2018.Day11.power_level(101, 153, 71) == 4
	end

	test "square coords" do
		assert Aoc2018.Day11.square_coords(1,1) == [
			{1, 1}, {2, 1}, {3, 1},
			{1, 2}, {2, 2}, {3, 2},
			{1, 3}, {2, 3}, {3, 3},
		]
	end

	test "Part Two" do
		assert Aoc2018.Day11.part_two(nil) == :incomplete
	end
end

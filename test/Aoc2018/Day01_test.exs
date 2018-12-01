defmodule Aoc2018.Day01Test do
	use ExUnit.Case

	test "Part One" do
		assert Aoc2018.Day01.part_one("+1\n-2\n+3\n+1") == 3
		assert Aoc2018.Day01.part_one("+1\n+1\n+1") == 3
		assert Aoc2018.Day01.part_one("+1\n+1\n-2") == 0
		assert Aoc2018.Day01.part_one("-1\n-2\n-3") == -6
	end

	test "Part Two" do
		assert Aoc2018.Day01.part_two("+1\n-2\n+3\n+1") == 2
		assert Aoc2018.Day01.part_two("+1\n-1") == 0
		assert Aoc2018.Day01.part_two("+3\n+3\n+4\n-2\n-4") == 10
		assert Aoc2018.Day01.part_two("-6\n+3\n+8\n+5\n-6") == 5
		assert Aoc2018.Day01.part_two("+7\n+7\n-2\n-7\n-4") == 14
	end
end

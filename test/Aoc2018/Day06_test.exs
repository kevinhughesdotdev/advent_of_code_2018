defmodule Aoc2018.Day06Test do
	use ExUnit.Case

	@input "1, 1\n1, 6\n8, 3\n3, 4\n5, 5\n8, 9"

	test "Part One" do
		assert Aoc2018.Day06.part_one(@input) == 17
	end

	test "Part Two" do
		assert Aoc2018.Day06.part_two(@input, 32) == 16
	end
end

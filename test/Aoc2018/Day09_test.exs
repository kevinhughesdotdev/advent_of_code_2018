defmodule Aoc2018.Day09Test do
	use ExUnit.Case

	@input1 "9 players; last marble is worth 25 points"
	# @input1 "428 players; last marble is worth 72061 points"

	test "Part One" do
		assert Aoc2018.Day09.part_one(@input1) == 32
		# assert Aoc2018.Day09.part_one(10) == 8317
		# assert Aoc2018.Day09.part_one(13) == 146373
		# assert Aoc2018.Day09.part_one(17) == 2764
		# assert Aoc2018.Day09.part_one(21) == 54718
		# assert Aoc2018.Day09.part_one(30) == 37305
	end

	test "Part Two" do
		# assert Aoc2018.Day09.part_two(nil) == :incomplete
	end
end

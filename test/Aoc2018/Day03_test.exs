defmodule Aoc2018.Day03Test do
	use ExUnit.Case

	test "Part One" do
		input = """
						#1 @ 1,3: 4x4
						#2 @ 3,1: 4x4
						#3 @ 5,5: 2x2
						"""
		assert Aoc2018.Day03.part_one(input) == 4
	end

	test "Part Two" do
		assert Aoc2018.Day03.part_two(nil) == :incomplete
	end

	test "squares" do
		assert Aoc2018.Day03.squares({1, 3, 4, 4}) == MapSet.new([
			{1,3}, {2,3}, {3,3}, {4,3},
			{1,4}, {2,4}, {3,4}, {4,4},
			{1,5}, {2,5}, {3,5}, {4,5},
			{1,6}, {2,6}, {3,6}, {4,6}
		])
	end

	test "process line" do
		assert Aoc2018.Day03.process_line("#8 @ 493,771: 20x25") == {493,771,20,25}
	end
end

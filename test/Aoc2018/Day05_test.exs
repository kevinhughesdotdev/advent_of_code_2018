defmodule Aoc2018.Day05Test do
	use ExUnit.Case

	test "Part One" do
		assert Aoc2018.Day05.part_one("aA") == 0
		assert Aoc2018.Day05.part_one("abBA") == 0
		assert Aoc2018.Day05.part_one("abAB") == 4
		assert Aoc2018.Day05.part_one("aabAAB") == 6
		assert Aoc2018.Day05.part_one("dabAcCaCBAcCcaDA") == 10
	end

	test "Part Two" do
		assert Aoc2018.Day05.part_two("dabAcCaCBAcCcaDA") == 4
	end

	test "Smash once" do
		assert Aoc2018.Day05.smash_once("aA") == ""
		assert Aoc2018.Day05.smash_once("abBA") == "aA"
		assert Aoc2018.Day05.smash_once("abAB") == "abAB"
		assert Aoc2018.Day05.smash_once("dabAcCaCBAcCcaDA") == "dabAaCBAcaDA"
	end
end

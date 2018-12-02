defmodule Aoc2018.Day02Test do
	use ExUnit.Case

	test "Part One" do
		input = """
						abcdef
						bababc
						abbcde
						abcccd
						aabcdd
						abcdee
						ababab
						"""
		assert Aoc2018.Day02.part_one(input) == 12
	end

	test "Part Two" do
		input = """
						abcde
						fghij
						klmno
						pqrst
						fguij
						axcye
						wvxyz
						"""
		assert Aoc2018.Day02.part_two(input) == "fgij"
	end

	test "difference" do
		assert Aoc2018.Day02.difference("fghij","fguij") == "fgij"
		assert Aoc2018.Day02.difference("aghij","fguij") == false
		assert Aoc2018.Day02.difference("abcde","abcde") == false
	end
end

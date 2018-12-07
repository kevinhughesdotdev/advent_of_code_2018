defmodule Aoc2018.Day07Test do
	use ExUnit.Case

	@input  """
					Step C must be finished before step A can begin.
					Step C must be finished before step F can begin.
					Step A must be finished before step B can begin.
					Step A must be finished before step D can begin.
					Step B must be finished before step E can begin.
					Step D must be finished before step E can begin.
					Step F must be finished before step E can begin.
					"""

	@deps  %{
		"A" => ["C"],
		"F" => ["C"],
		"B" => ["A"],
		"D" => ["A"],
		"E" => ["F","D","B"]
	}

	@steps ~w(A B C D E F)

	test "Part One" do
		assert Aoc2018.Day07.part_one(@input) == "CABDFE"
	end

	test "deps" do
		assert Aoc2018.Day07.dep_map(@input) == @deps
	end

	test "steps" do
		assert Aoc2018.Day07.steps(@deps) == @steps
	end

	test "next_step" do
		assert Aoc2018.Day07.next_step(@deps) == "C"
	end

	test "remove dep" do
		assert Aoc2018.Day07.remove_dep(@deps, "C") == %{
			"B" => ["A"],
			"B" => ["A"],
			"D" => ["A"],
			"E" => ["F","D","B"]
		}

		assert Aoc2018.Day07.remove_dep(@deps, "D") == %{
			"A" => ["C"],
			"F" => ["C"],
			"B" => ["A"],
			"D" => ["A"],
			"E" => ["F","B"]
		}
	end

	test "Part Two" do
		assert Aoc2018.Day07.part_two(@input, 2, 0) == 15
	end
end

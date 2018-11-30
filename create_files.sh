#!/usr/bin/bash

mkdir -p test/Aoc2018 lib/Aoc2018
for DAY in `seq -w 1 25`; do
cat <<EOF > test/Aoc2018/Day${DAY}_test.exs
defmodule Aoc2018.Day${DAY}Test do
	use ExUnit.Case

	test "Part One" do
		assert Aoc2018.Day${DAY}.part_one(nil) == :incomplete
	end

	test "Part Two" do
		assert Aoc2018.Day${DAY}.part_one(nil) == :incomplete
	end
end
EOF

cat <<EOF > lib/Aoc2018/Day${DAY}.ex
defmodule Aoc2018.Day${DAY} do
	def part_one(_input) do
		:incomplete
	end

	def part_two(_input) do
		:incomplete
	end
end
EOF
done

#!/usr/bin/bash

mkdir -p test/Aoc2019 lib/Aoc2019
for DAY in `seq -w 1 25`; do
cat <<EOF > test/Aoc2019/Day${DAY}_test.exs
defmodule Aoc2019.Day${DAY}Test do
	use ExUnit.Case

	test "Part One" do
		assert Aoc2019.Day${DAY}.part_one(nil) == :incomplete
	end

	test "Part Two" do
		assert Aoc2019.Day${DAY}.part_two(nil) == :incomplete
	end
end
EOF

cat <<EOF > lib/Aoc2019/Day${DAY}.ex
defmodule Aoc2019.Day${DAY} do
	def part_one(_input) do
		:incomplete
	end

	def part_two(_input) do
		:incomplete
	end
end
EOF
done

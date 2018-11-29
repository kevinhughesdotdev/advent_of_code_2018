#!/usr/bin/bash

mkdir -p test/Aoc2018 lib/Aoc2018
for DAY in `seq -w 1 31`; do
cat <<EOF > test/Aoc2018/Day${DAY}_test.exs
defmodule Aoc2018.Day${DAY}Test do
	use ExUnit.Case

	test "Part One" do
		assert Aoc2018.Day${DAY}.part_one() == nil
	end

	test "Part Two" do
		assert Aoc2018.Day${DAY}.part_one() == nil
	end
end
EOF

cat <<EOF > lib/Aoc2018/Day${DAY}.ex
defmodule Aoc2018.Day${DAY} do
	def part_one() do
	end

	def part_two() do
	end
end
EOF
done

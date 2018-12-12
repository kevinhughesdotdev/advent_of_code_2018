defmodule Aoc2018.Day08Test do
  use ExUnit.Case

  @input "2 3 0 3 10 11 12 1 1 0 1 99 2 1 1 2"

  test "Part One" do
    assert Aoc2018.Day08.part_one(@input) == 138
  end

  test "Part Two" do
    assert Aoc2018.Day08.part_two(@input) == 66
  end
end

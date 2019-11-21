defmodule Aoc2018.Day09Test do
  use ExUnit.Case

  @input1 "9 players; last marble is worth 25 points"
  # @input1 "428 players; last marble is worth 72061 points"

  test "Part One" do
    assert Aoc2018.Day09.part_one(@input1) == 32
    assert Aoc2018.Day09.part_one("10 players; last marble is worth 1618 points") == 8317
    assert Aoc2018.Day09.part_one("13 players; last marble is worth 7999 points") == 146_373
    assert Aoc2018.Day09.part_one("21 players; last marble is worth 6111 points") == 54718
    assert Aoc2018.Day09.part_one("30 players; last marble is worth 5807 points") == 37305
  end

  test "Part Two" do
    assert Aoc2018.Day09.part_two(@input1) == 22563
  end
end

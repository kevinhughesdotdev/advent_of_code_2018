defmodule Aoc2018.Day14Test do
  use ExUnit.Case
  alias Aoc2018.Day14

  test "Part One" do
    assert Aoc2018.Day14.part_one("9") == "5158916779"
    assert Aoc2018.Day14.part_one("5") == "0124515891"
    assert Aoc2018.Day14.part_one("18") == "9251071085"
    assert Aoc2018.Day14.part_one("2018") == "5941429882"
  end

  test "new recipes" do
    assert Day14.new_recipes([3, 7], 0, 1, 0, 1) == {[3, 7, 1, 0], 0, 1}
    assert Day14.new_recipes([3, 7, 1, 0], 0, 1, 0, 1) == {[3, 7, 1, 0, 1, 0], 4, 3}
    assert Day14.new_recipes([3, 7, 1, 0, 1, 0], 4, 3, 0, 1) == {[3, 7, 1, 0, 1, 0, 1], 6, 4}
  end

  test "Part Two" do
    assert Aoc2018.Day14.part_two("51589") == 9
    assert Aoc2018.Day14.part_two("01245") == 5
    assert Aoc2018.Day14.part_two("92510") == 18
    assert Aoc2018.Day14.part_two("59414") == 2018
  end
end

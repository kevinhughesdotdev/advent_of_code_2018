defmodule Aoc2019.Day03Test do
  use ExUnit.Case

  test "coords for a wire path" do
    assert Aoc2019.Day03.path(0, 0, "R8") == [
             {1, 0},
             {2, 0},
             {3, 0},
             {4, 0},
             {5, 0},
             {6, 0},
             {7, 0},
             {8, 0}
           ]

    assert Aoc2019.Day03.path(6, 0, "D5") == [{6, -1}, {6, -2}, {6, -3}, {6, -4}, {6, -5}]
  end

  # 
  # test "Part One" do
  #   assert Aoc2019.Day03.part_one(nil) == :incomplete
  # end

  test "Part Two" do
    assert Aoc2019.Day03.part_two(nil) == :incomplete
  end
end

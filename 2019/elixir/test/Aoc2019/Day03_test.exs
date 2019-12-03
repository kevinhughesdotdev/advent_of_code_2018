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

  test "Part Two" do
    assert Aoc2019.Day03.part_two(
             "R75,D30,R83,U83,L12,D49,R71,U7,L72\nU62,R66,U55,R34,D71,R55,D58,R83"
           ) == 610

    assert Aoc2019.Day03.part_two(
             "R98,U47,R26,D63,R33,U87,L62,D20,R33,U53,R51\nU98,R91,D20,R16,D67,R40,U7,R15,U6,R7"
           ) == 410
  end
end

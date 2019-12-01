defmodule Aoc2018.Day13Test do
  use ExUnit.Case
  alias Aoc2018.Day13

  @input "/->-\\        \n|   |  /----\\\n| /-+--+-\\  |\n| | |  | v  |\n\\-+-/  \\-+--/\n  \\------/   "
  @input2 "/>-<\\  \n|   |  \n| /<+-\\\n| | | v\n\\>+</ |\n  |   ^\n  \\<->/"

  test "Part One" do
    assert Aoc2018.Day13.part_one(@input) == "7, 3"
  end

  test "build_map" do
    map = Day13.build_map(@input)
    assert map |> elem(0) |> elem(0) == "/"
    assert map |> elem(2) |> elem(4) == "+"
  end

  test "get_carts" do
    carts = Day13.build_map(@input) |> Day13.get_carts()

    assert carts == [
             {2, 0, ">", :left},
             {9, 3, "v", :left}
           ]
  end

  test "Part Two" do
    assert Aoc2018.Day13.part_two(@input2) == "6, 5"
  end
end

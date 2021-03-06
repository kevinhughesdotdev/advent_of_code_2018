defmodule Aoc2018.Day12Test do
  use ExUnit.Case
  import Aoc2018.Day12

  @input """
  initial state: #..#.#..##......###...###

  ...## => #
  ..#.. => #
  .#... => #
  .#.#. => #
  .#.## => #
  .##.. => #
  .#### => #
  #.#.# => #
  #.### => #
  ##.#. => #
  ##.## => #
  ###.. => #
  ###.# => #
  ####. => #
  """

  test "Part One" do
    assert part_one(@input) == 325
  end

  test "Parse input" do
    assert parse(@input) == {
             %{
               0 => "#",
               1 => ".",
               2 => ".",
               3 => "#",
               4 => ".",
               5 => "#",
               6 => ".",
               7 => ".",
               8 => "#",
               9 => "#",
               10 => ".",
               11 => ".",
               12 => ".",
               13 => ".",
               14 => ".",
               15 => ".",
               16 => "#",
               17 => "#",
               18 => "#",
               19 => ".",
               20 => ".",
               21 => ".",
               22 => "#",
               23 => "#",
               24 => "#"
             },
             %{
               "...##" => "#",
               "..#.." => "#",
               ".#..." => "#",
               ".#.#." => "#",
               ".#.##" => "#",
               ".##.." => "#",
               ".####" => "#",
               "#.#.#" => "#",
               "#.###" => "#",
               "##.#." => "#",
               "##.##" => "#",
               "###.." => "#",
               "###.#" => "#",
               "####." => "#"
             }
           }
  end
end

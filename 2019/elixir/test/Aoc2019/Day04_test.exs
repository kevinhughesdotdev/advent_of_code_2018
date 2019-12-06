defmodule Aoc2019.Day04Test do
  use ExUnit.Case

  test "Part One" do
    assert Aoc2019.Day04.valid?(111_111)
    refute Aoc2019.Day04.valid?(223_450)
    refute Aoc2019.Day04.valid?(123_789)
  end

  test "Part Two" do
    assert Aoc2019.Day04.valid2?(112_233)
    refute Aoc2019.Day04.valid2?(123_444)
    refute Aoc2019.Day04.valid2?(111_122) == false
  end
end

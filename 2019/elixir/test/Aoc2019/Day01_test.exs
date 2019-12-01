defmodule Aoc2019.Day01Test do
  use ExUnit.Case

  test "Part One Mass" do
    assert Aoc2019.Day01.mass(12) == 2
    assert Aoc2019.Day01.mass(14) == 2
    assert Aoc2019.Day01.mass(1969) == 654
    assert Aoc2019.Day01.mass(100_756) == 33583
  end

  test "Part One Complete" do
    assert Aoc2019.Day01.part_one("12\n14\n1969\n100756\n") == 34241
  end

  test "Culminative mass" do
    assert Aoc2019.Day01.culm_mass(12) == 2
    assert Aoc2019.Day01.culm_mass(14) == 2
    assert Aoc2019.Day01.culm_mass(1969) == 966
    assert Aoc2019.Day01.culm_mass(100_756) == 50346
  end

  test "Part Two" do
    assert Aoc2019.Day01.part_two("12\n14\n1969\n100756\n") == 51316
  end
end

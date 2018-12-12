defmodule Aoc2018.Day02 do
  def part_one(input) do
    input = input
      |> String.split("\n")
      |> Enum.map(&checksum(&1))
    Enum.count(input, fn({x, _}) -> x end) *
    Enum.count(input, fn({_, x}) -> x end)
  end

  def part_two(input) do
    list = input
      |> String.trim_trailing("\n")
      |> String.split("\n")
    (for x <- list, y <- list, do: difference(x,y)) |> Enum.find(&(&1))
  end

  defp checksum(box_id) do
    counts = box_id
      |> String.split("")
      |> Enum.group_by(&(&1))
      |> Map.delete("")
      |> Enum.map(fn {k, v} -> { k, Enum.count(v) } end)
      |> Map.new
    {
      Enum.find(counts, fn {_, v} -> v == 2 end) && 1,
      Enum.find(counts, fn {_, v} -> v == 3 end) && 1
    }
  end

  def difference([], []), do: []
  def difference([c1|str1], [c2|str2]) do
    cond do
      c1 == c2 -> [c1| difference(str1, str2)]
      c1 != c2 -> difference(str1, str2)
    end
  end

  def difference(str1, str2) do
    difference = difference(String.graphemes(str1), String.graphemes(str2))
      |> Enum.join
    String.length(str1) - 1 == String.length(difference) && difference
  end
end

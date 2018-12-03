defmodule Aoc2018.Day03 do
  def part_one(input) do
    cuts = input
    |> String.trim_trailing("\n")
    |> String.split("\n")
    |> Enum.map(fn l -> process_line(l) end)

    count_overlap(cuts)
  end

  def part_two(_input) do
    :incomplete
  end

  def count_overlap(list), do: count_overlap(list, MapSet.new, MapSet.new)
  def count_overlap([], _, overlap), do: Enum.count(overlap)
  def count_overlap([cut|tail], cloth, overlap) do
    squares = squares(cut)
    new_overlap = MapSet.intersection(cloth, squares)
    count_overlap(tail, MapSet.union(cloth, squares), MapSet.union(overlap, new_overlap))
  end

  def squares({x, y, w, h}) do
    for x <- x..x + w - 1 do
      for y <- y..y + h - 1 do
        {x, y}
      end
    end |> List.flatten |> MapSet.new
  end

  def process_line(line) do
    [_, _, xy, wh] = line
      |> String.split(" ")
    [x, y] = xy |> String.trim_trailing(":") |> String.split(",") |> Enum.map(fn x -> String.to_integer(x) end)
    [w, h] = wh |> String.split("x") |> Enum.map(fn x -> String.to_integer(x) end)
    {x, y, w, h}
  end
end

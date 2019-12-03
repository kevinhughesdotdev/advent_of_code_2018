defmodule Aoc2019.Day03 do
  def path(x, y, "L" <> count) do
    count = String.to_integer(count)
    (x - 1)..(x - count) |> Enum.map(fn xs -> {xs, y} end)
  end

  def path(x, y, "R" <> count) do
    count = String.to_integer(count)
    (x + 1)..(x + count) |> Enum.map(fn xs -> {xs, y} end)
  end

  def path(x, y, "D" <> count) do
    count = String.to_integer(count)
    (y - 1)..(y - count) |> Enum.map(fn ys -> {x, ys} end)
  end

  def path(x, y, "U" <> count) do
    count = String.to_integer(count)
    (y + 1)..(y + count) |> Enum.map(fn ys -> {x, ys} end)
  end

  def path(wire), do: path(wire, 0, 0)

  def path([], _, _, coords), do: coords

  def path([h | t], x, y, coords \\ []) do
    new_coords = path(x, y, h)
    {newx, newy} = List.last(new_coords)
    path(t, newx, newy, new_coords ++ coords)
  end

  def part_one(input) do
    coords =
      input
      |> String.split("\n")
      |> Enum.map(fn w -> String.split(w, ",") end)
      |> Enum.map(&path/1)
      |> Enum.map(&MapSet.new/1)

    apply(MapSet, :intersection, coords)
    |> Enum.map(fn {x, y} -> abs(x) + abs(y) end)
    |> Enum.min()
  end

  def part_two(_input) do
    :incomplete
  end
end

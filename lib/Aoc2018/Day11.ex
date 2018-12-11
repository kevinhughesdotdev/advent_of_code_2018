defmodule Aoc2018.Day11 do
  def part_one(input) do
    serial = String.to_integer(input)
    squares = for y <- 1..498, x <- 1..498, do: {x, y, square_power(x, y, serial)}
    {x, y, power} = Enum.max_by(squares, &elem(&1, 2))
    "#{x},#{y}"
  end

  def power_level(x, y, serial) do
    (
      rackID = x + 10
      (((y * rackID) + serial) * rackID)
      |> Integer.to_string
      |> String.slice(-3, 1)
      |> String.to_integer
    ) - 5
  end

  def square_coords(x, y) do
    for y <- y..(y + 2), x <- x..(x + 2), do: {x, y}
  end

  def square_power(x, y, serial) do
    (for {x, y} <- square_coords(x, y), do: power_level(x, y, serial))
    # |> IO.inspect
    |> Enum.sum
  end

  def part_two(_input) do
    :incomplete
  end
end

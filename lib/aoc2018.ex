defmodule Aoc2018 do
  def padded_number(number) do
    number
      |> Integer.to_string
      |> String.pad_leading(2, "0")
  end

  def run(), do: Enum.each 1..25, fn(day) -> run(day) end
  def run(number) do
    IO.puts "Challenge #{padded_number(number)}"
    IO.write "  Part One: "
    IO.puts :"Elixir.Aoc2018.Day#{padded_number(number)}".part_one(input(number))
    IO.write "  Part Two: "
    IO.puts :"Elixir.Aoc2018.Day#{padded_number(number)}".part_two(input(number))
  end

  def input(number) do
    File.read!("input/#{padded_number(number)}.txt")
      |> String.replace_trailing("\n", "")
  end
end

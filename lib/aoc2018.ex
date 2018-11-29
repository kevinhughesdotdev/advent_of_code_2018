defmodule Aoc2018 do
  def padded_number(n) when is_integer(n), do: padded_number(Integer.to_string(n))
  def padded_number(n) when is_binary(n), do: String.pad_leading(n, 2, "0")

  def run([]), do: run()
  def run([n]), do: run(n)
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

defmodule Aoc2019 do
  @grey IO.ANSI.color(1, 1, 1)

  def padded_number(n) when is_integer(n), do: padded_number(Integer.to_string(n))
  def padded_number(n) when is_binary(n), do: String.pad_leading(n, 2, "0")

  def run(), do: Enum.each(1..25, fn day -> run(day) end)
  def run([]), do: run()
  def run([n]), do: run(n)

  def run(number) do
    case input(number) do
      :incomplete -> IO.puts(@grey <> "Challenge #{number} incomplete")
      input -> run(number, input)
    end
  end

  def run(number, input) do
    IO.puts("Challenge #{padded_number(number)}")
    IO.write("  Part One: ")
    IO.puts(:"Elixir.Aoc2019.Day#{padded_number(number)}".part_one(input))
    IO.write("  Part Two: ")
    IO.puts(:"Elixir.Aoc2019.Day#{padded_number(number)}".part_two(input))
  end

  def input(number) do
    case File.read("../input/#{padded_number(number)}.txt") do
      {:ok, input} -> String.replace_trailing(input, "\n", "")
      {:error, _} -> :incomplete
    end
  end
end

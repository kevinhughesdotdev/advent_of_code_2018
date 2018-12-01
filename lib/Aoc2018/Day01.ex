defmodule Aoc2018.Day01 do
  def part_one(input) do
    input
      |> String.split("\n")
      |> Enum.map(fn(x) -> String.to_integer(x) end)
      |> Enum.sum
  end

  def part_two(input) do
    input = input
      |> String.split("\n")
      |> Enum.map(fn(x) -> String.to_integer(x) end)
    process(input, nil, input, 0)
  end

  defp process(input, nil, inst, freq), do: process(input, MapSet.new([0, freq]), inst, freq)
  defp process(input, frequencies, [], freq), do: process(input, frequencies, input, freq)
  defp process(input, frequencies, [inst|tail], freq) do
    freq = freq + inst
    cond do
      MapSet.member?(frequencies, freq) -> freq
      true -> process(input, MapSet.put(frequencies, freq), tail, freq)
    end
  end
end

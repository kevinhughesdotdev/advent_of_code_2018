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

  def process(input, frequencies, [], freq), do: process(input, frequencies, input, freq)
  def process(input, frequencies, [inst|tail], freq) do
    freq = freq + inst
    cond do
      frequencies == nil -> process(input, MapSet.new([0, freq]), tail, freq)
      MapSet.member?(frequencies, freq) -> freq
      true -> process(input, MapSet.put(frequencies, freq), tail, freq)
    end
  end
end

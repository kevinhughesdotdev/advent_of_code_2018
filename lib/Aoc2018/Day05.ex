defmodule Aoc2018.Day05 do
  def part_one(input) do
    String.length(smash(input))
  end

  def part_two(_input) do
    :incomplete
  end

  def smash(""), do: ""
  def smash(string) do
    len = IO.inspect(String.length(string))
    if len < 100, do: IO.inspect(string), else: IO.inspect(len)
    smashed = smash_once(string)
    case smashed do
      ^string -> string
      _ -> smash(smashed)
    end
  end

  def two_letter_match(a,b) do
    String.match?(a, ~r/[a-z]/) && b == String.upcase(a) ||
    String.match?(a, ~r/[A-Z]/) && b == String.downcase(a)
  end

  def smash_once(string), do: smash_once(string, 0)
  def smash_once(string, x) do
    case string |> String.slice(x, 2) |> String.graphemes do
      [] -> string
      [_] -> string
      [a,b] ->
        cond do
          two_letter_match(a,b) ->
            {left, mid} = String.split_at(string, x)
            {_, right} = String.split_at(mid, 2)
            smash_once(Enum.join([left, right]), x + 1)
          x < String.length(string) - 2 -> smash_once(string, x + 1)
          true -> string
        end
    end
  end
end

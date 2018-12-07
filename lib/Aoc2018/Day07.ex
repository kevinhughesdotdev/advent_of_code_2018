defmodule Aoc2018.Day07 do
  def part_one(input) do
    input
    |> dep_map
    |> process([])
  end

  def part_two(_input) do
    :incomplete
  end

  def process(deps, steps) when map_size(deps) == 1 do
    left = deps
    |> Map.values
    |> Enum.sort

    steps
     |> Enum.reverse

    Map.keys(deps) ++ left ++ steps
    |> List.flatten
    |> Enum.reverse
    |> Enum.join
   end

  def process(deps, steps) do
    step = next_step(deps)
    process(remove_dep(deps, step), [step | steps])
  end

  def remove_dep(deps, step) do
    (for {k, v} <- deps, do: {k, Enum.reject(v, fn x -> x == step end)})
    |> Enum.reject(fn {_, d} -> d == [] end)
    |> Map.new
  end

  def steps(dep_map) do
    dep_map
    |> Map.values
    |> Enum.concat(Map.keys(dep_map))
    |> List.flatten
    |> Enum.sort
    |> Enum.dedup
  end

  def next_step(dep_map) do
    steps(dep_map)
    |> Enum.filter(fn s -> s not in Map.keys(dep_map) end)
    |> Enum.sort
    |> List.first
  end

  def dep_map(input), do: dep_map(String.split(input, "\n"), %{})
  defp dep_map([""], deps), do: deps
  defp dep_map([], deps), do: deps

  defp dep_map([h|t], deps) do
    "Step " <> <<dep :: bytes-size(1)>>
      <> " must be finished before step "
      <> <<x :: bytes-size(1)>> <> " can begin." = h
    deps = case deps[x] do
      nil -> Map.put(deps, x, [dep])
      list -> %{ deps | x => [ dep | deps[x] ] }
    end
    dep_map(t, deps)
  end
end

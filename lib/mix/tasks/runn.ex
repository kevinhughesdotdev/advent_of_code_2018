defmodule Mix.Tasks.Challenge do
  use Mix.Task

  @shortdoc "Runs a challenge (or all of them) with the full input"
  def run(number), do: Aoc2018.run(number)
end

module Aoc2019
  class Day02
    class Program
      attr_accessor :state, :p, :finished

      def initialize(*state)
        @state = state
        @finished = false
        @p = 0
      end

      def step
        case state[@p]
        when 1 then state[state[@p + 3]] = state[state[@p + 1]] + state[state[@p + 2]]
        when 2 then state[state[@p + 3]] = state[state[@p + 1]] * state[state[@p + 2]]
        when 99 then @finished = true
        else raise "Unknown opcode! #{@p}: #{@state}"
        end
        @p += 4
      end

      def run
        self.step until @finished
        self
      end
    end

    def self.part_one(input)
      program = Program.new(*input.split(",").map(&:to_i))
      program.state[1] = 12
      program.state[2] = 2
      program.run.state[0]
    end

    def self.part_two(input)
      catch(:complete) do
        0.upto(99) do |noun|
          0.upto(99) do |verb|
            program = Program.new(*input.split(",").map(&:to_i))
            program.state[1] = noun
            program.state[2] = verb
            program.run.state[0]
            throw(:complete, 100 * noun + verb) if program.state[0] == 19690720
          end
        end
      end
    end
  end
end

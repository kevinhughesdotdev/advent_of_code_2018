module Aoc2019
  class Day05
    class Computer
      attr_accessor :memory, :output

      def initialize(memory, input)
        @memory = memory
        @pointer = 0
        @output = ""
        @input = input
      end

      def step
        ins = @memory[@pointer].to_s
        opcode = ins.length == 1 ? "0#{ins}" : ins[-2,2]
        (m3, m2, m1) = ins[0..-3].rjust(3,"0").split("")
        case opcode
        when "99" then throw(:stop, @output)
        when "01"
          write(3, get(@pointer + 1, m1) + get(@pointer + 2, m2))
          @pointer += 4
        when "02"
          write(3, get(@pointer + 1, m1) * get(@pointer + 2, m2))
          @pointer += 4
        when "03"
          write(1, @input)
          @pointer += 2
        when "04"
          @output += get(@pointer + 1, m1).to_s
          @pointer += 2
        when "05"
          @pointer = if get(@pointer + 1, m1) == 0
            @pointer + 3
          else
            get(@pointer + 2, m2)
          end
        when "06"
          @pointer = if get(@pointer + 1, m1) == 0
            get(@pointer + 2, m2)
          else
            @pointer + 3
          end
        when "07"
          write(3, get(@pointer + 1, m1) < get(@pointer + 2, m2) ? 1: 0)
          @pointer += 4
        when "08"
          write(3, get(@pointer + 1, m1) == get(@pointer + 2, m2) ? 1: 0)
          @pointer += 4
        else
          fail "Bad opcode: #{opcode}"
        end
      end

      def get(addr, mode)
        puts "Getting #{addr} with mode #{mode}"
        if mode == "0"
          memory[memory[addr].to_i]
        else
          memory[addr]
        end.to_i
      end

      def write(offset, x)
        puts "writing #{x} to #{@memory[@pointer + offset]}"
        @memory[@memory[@pointer + offset].to_i] = x.to_s
      end
    end

    def self.part_one(input)
      computer = Computer.new(input.split(","), "1")
      catch(:stop) do
        computer.step while true
      end.gsub(/^0+/,"")
    end

    def self.part_two(input)
      computer = Computer.new(input.split(","), "5")
      catch(:stop) do
        computer.step while true
      end
    end
  end
end

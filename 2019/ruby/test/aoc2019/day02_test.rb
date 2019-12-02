require 'minitest/autorun'
require_relative '../../lib/aoc2019/day02.rb'

module Aoc2019::Test
  class Day02 < MiniTest::Test
    def test_run
      assert_equal [2,0,0,0,99], Aoc2019::Day02::Program.new(1,0,0,0,99).run.state
      assert_equal [2,3,0,6,99], Aoc2019::Day02::Program.new(2,3,0,3,99).run.state
      assert_equal [2,4,4,5,99,9801], Aoc2019::Day02::Program.new(2,4,4,5,99,0).run.state
      assert_equal [30,1,1,4,2,5,6,0,99], Aoc2019::Day02::Program.new(1,1,1,4,99,5,6,0,99).run.state
    end

    def test_new_prog
      program = Aoc2019::Day02::Program.new(1,9,10,3,2,3,11,0,99,30,40,50)
      assert_equal [1,9,10,3,2,3,11,0,99,30,40,50], program.state
      assert_equal 0, program.p
    end

    def test_addition
      program = Aoc2019::Day02::Program.new(1,9,10,3,2,3,11,0,99,30,40,50)
      program.step
      assert_equal [1,9,10,70,2,3,11,0,99,30,40,50], program.state
      assert_equal 4, program.p
      refute program.finished
    end

    def test_multiplication
      program = Aoc2019::Day02::Program.new(1,9,10,70,2,3,11,0,99,30,40,50)
      program.p = 4
      program.step
      assert_equal [3500,9,10,70,2,3,11,0,99,30,40,50], program.state
      assert_equal 8, program.p
      refute program.finished
    end

    def test_stop
      program = Aoc2019::Day02::Program.new(3500,9,10,70,2,3,11,0,99,30,40,50)
      program.p = 8
      program.step
      assert_equal [3500,9,10,70,2,3,11,0,99,30,40,50], program.state
      assert program.finished
    end

    def test_part_two
      assert_equal Aoc2019::Day02.part_two(nil), :incomplete
    end
  end
end

#!/usr/bin/bash

mkdir -p test/aoc2018 lib/aoc2018
for DAY in `seq -w 1 25`; do
cat <<EOF > test/aoc2018/day${DAY}_test.rb
require 'minitest/autorun'
require_relative '../../lib/aoc2018/day${DAY}.rb'

module Aoc2018::Test
  class Day${DAY} < MiniTest::Test
    def test_part_one
      assert_equal Aoc2018::Day${DAY}.part_one(nil), :incomplete
    end

    def test_part_two
      assert_equal Aoc2018::Day${DAY}.part_one(nil), :incomplete
    end
  end
end
EOF

cat <<EOF > lib/aoc2018/day${DAY}.rb
module Aoc2018
  class Day${DAY}
    def self.part_one(_input)
      :incomplete
    end

    def self.part_two(_input)
      :incomplete
    end
  end
end
EOF
done

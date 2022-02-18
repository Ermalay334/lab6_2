# frozen_string_literal: true

load 'main.rb'
require 'minitest/autorun'

# mini_tests.rb

# Test 1

class TestRobot < Minitest::Test
  def func1(rad, nnn = 6)
    a = nnn * 2 * rad * Math.sin(Math::PI / nnn)
    e = Enumerator.new do |yielder|
      loop do
        yielder << (a - p1(rad)).abs
        a = a(rad, a)
        nnn *= 2
      end
    end
    e.first(rad.to_i).last
  end

  def test_func1
    assert_equal(dlina_okr(23), func1(23))
  end
end
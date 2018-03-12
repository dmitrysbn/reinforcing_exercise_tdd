require 'minitest/autorun'
require 'minitest/pride'
# In this problem we are going to make a calculator.
require './calculator.rb'

class TestCalculator < MiniTest::Test
  # add takes two parameters and adds them
  def test_adds_0_and_0
    expected = 0
    actual = add(0,0)

    assert_equal expected, actual
  end

  def test_adds_2_and_2
    expected = 4
    actual = add(2, 2)

    assert_equal expected, actual
  end

  def test_adds_positive_numbers
    expected = 8
    actual = add(2, 6)

    assert_equal expected, actual
  end

 # subtract takes two parameters and subtracts the second from the first
  def test_subtracts_numbers
    expected = 6
    actual = subtract(10, 4)

    assert_equal expected, actual
  end

# sum takes an *array* of numbers and adds them all together
# This one is a bit trickier!
  def test_computes_sum_of_empty_array
    expected = 0
    actual = sum([])

    assert_equal expected, actual
  end

  def test_computes_sum_of_single_number
    expected = 7
    actual = sum([7])

    assert_equal expected, actual
  end

  def test_computes_sum_of_two_numbers
    expected = 18
    actual = sum([7, 11])

    assert_equal expected, actual
  end

  def test_computes_sum_of_many_numbers
    expected = 25
    actual = sum([1,3,5,7,9])

    assert_equal expected, actual
  end
end

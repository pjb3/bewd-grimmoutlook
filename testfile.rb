require 'minitest/autorun'
require 'minitest/colorize'
require './codefile'

class CalculateTotalTest < MiniTest::Unit::TestCase
  def test_total_price_0
    assert_equal "$0.00", calculate_total([{quantity: 0, unit_price: 0}])
  end

  def test_quantity_2
    assert_equal "$4.20", calculate_total([{quantity: 2, unit_price: 2}])
  end

  def test_two_orders
    assert_equal "$7.00", calculate_total([{quantity: 2, unit_price: 2},{quantity: 3, unit_price: 0.89}])
  end

# Extra Credit #1
  def test_empty_array
    assert_equal "$0.00", calculate_total([])
  end
# Extra Credit #2 - Seems the same as test_two_orders
  def test_mult_orders
    assert_equal "$157.50", calculate_total([{quantity: 0, unit_price: 0},{quantity: 50, unit_price: 1},{quantity: 40, unit_price: 1},{quantity: 30, unit_price: 1},{quantity: 20, unit_price: 1},{quantity: 10, unit_price: 1}])
  end

end

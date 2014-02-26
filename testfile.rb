require 'minitest/autorun'
require 'minitest/colorize'
require './codefile'

class CalculateTotalTest < MiniTest::Unit::TestCase
  def test_total_price_0
    assert_equal "$0.00", calculate_total(quantity: 0, unit_price: 0)
  end

  def test_quantity_2
    assert_equal "$4.20", calculate_total(quantity: 2, unit_price: 2)
  end

  def test_two_orders
    assert_equal "$4.20", calculate_total(quantity: 2, unit_price: 2)
    assert_equal "$2.80", calculate_total(quantity: 3, unit_price: 0.89)
  end
end

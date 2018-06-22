require 'minitest/autorun'
require_relative 'coin_exchange.rb'

class TestCoinExchange < Minitest::Test
  def test_assert_1_equals_1
    assert_equal(1, 1)
  end

  def test_returns_hash
    assert_equal(Hash, coin_exchange(0).class)
  end
end
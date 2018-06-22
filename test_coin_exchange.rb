require 'minitest/autorun'
require_relative 'coin_exchange.rb'

class TestCoinExchange < Minitest::Test
  def test_assert_1_equals_1
    assert_equal(1, 1)
  end

  def test_returns_hash
    assert_equal(Hash, coin_exchange(0).class)
  end

  def test_returns_penny
    assert_equal({:penny => 1}, coin_exchange(1))
  end

  def test_returns_nickel
    assert_equal({:nickel => 1}, coin_exchange(5))
  end

  def test_returns_dime
    assert_equal({:dime => 1}, coin_exchange(10))
  end

  def test_returns_quarter
    assert_equal({:quarter => 1}, coin_exchange(25))
  end

  def test_returns_each
    assert_equal({:quarter => 1, :dime => 1, :nickel => 1, :penny => 1}, coin_exchange(41))
  end

  def test_returns_complex
    assert_equal({:quarter => 2, :dime => 1, :nickel => 1, :penny => 3}, coin_exchange(68))
    assert_equal({:dime => 2, :penny => 2}, coin_exchange(22))
    assert_equal({:quarter => 8, :penny => 2}, coin_exchange(202))
  end
end
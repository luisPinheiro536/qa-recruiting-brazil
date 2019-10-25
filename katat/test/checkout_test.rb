# test/checkout_test.rb

require 'minitest/autorun'

require_relative '../app/checkout'
require_relative '../app/rule'

class CheckoutTest < MiniTest::Test

  def price goods
    rules = [Rule.new('A',50),
             Rule.new('A',130,3),
             Rule.new('B',30),
             Rule.new('B',45,2),
             Rule.new('C',20),
             Rule.new('D',15)]


    checkout = Checkout.new rules
    goods.split(//).each do |item|
      checkout.scan(item)
    end
    checkout.total
  end

  def test_price_of_no_items
    assert_equal(0, price(""))
  end

  def test_price_of_one_item
    assert_equal(50, price("A"))
  end

  def test_price_of_two_items
    assert_equal(80, price("AB"))
  end

  def test_price_of_multiple_items
    assert_equal(165, price("ABACD"))
  end

  def test_price_with_discount_rule
    assert_equal(130, price("AAA"))
  end

  def test_price_with_discount_rule_and_more_items
    assert_equal(180, price("AABCA"))
  end

  def test_price_with_discount_rule_and_remainder
    assert_equal(180, price("AAAA"))
  end
  
  def test_incremental
    rules = [Rule.new('A',50),
             Rule.new('A',130,3),
             Rule.new('B',30),
             Rule.new('B',45,2),
             Rule.new('C',20),
             Rule.new('D',15)]

    checkout = Checkout.new rules
    assert_equal(0, checkout.total)
    checkout.scan("A"); assert_equal(50, checkout.total)
    checkout.scan("B"); assert_equal(80, checkout.total)
    checkout.scan("A"); assert_equal(130, checkout.total)
    checkout.scan("A"); assert_equal(160, checkout.total)
    checkout.scan("B"); assert_equal(175, checkout.total)

  end


end
# app/rule.rb

class Rule
  attr_accessor :product
  attr_accessor :price
  attr_accessor :amount


  def initialize()
    @product = product
    @price = price
    @amount = amount
  end

  def initialize(product, price, amount=1)
    @product = product
    @price = price
    @amount = amount
  end

end
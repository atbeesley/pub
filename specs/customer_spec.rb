require('minitest/autorun')
# require('minitest/rg')
require_relative('../customer.rb')
require_relative('../pub.rb')

class TestCustomer < Minitest::Test

  def setup
    @customer = Customer.new("Mick Jagger", 20)
    @drink1 = Drink.new("Vodka", 5)
  end

  def test_customer_name
    assert_equal("Mick Jagger", @customer.name)
  end

  def test_customer_wallet
    assert_equal(20, @customer.wallet)
  end

  def test_customer_has_enough_money
    assert(@customer.wallet >= 5)
  end

  # def test_customer_has_bought_drink
  #   buy_drink(@drink1)
  #   assert_equal(15, @customer.wallet)
  #   assert_equal(105, @pub.till)
  # end



end

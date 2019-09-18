require('minitest/autorun')
# require('minitest/rg')
require_relative('../customer.rb')
require_relative('../pub.rb')

class TestCustomer < Minitest::Test

  def setup
    @customer = Customer.new("Mick Jagger", 20)
  end

  def test_customer_name
    assert_equal("Mick Jagger", @customer.name)
  end

  def test_customer_wallet
    assert_equal(20, @customer.wallet)
  end

end

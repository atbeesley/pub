require('minitest/autorun')
# require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')

class TestPub < Minitest::Test

  def setup
    @pub = Pub.new("The Rubber Duck", [@customer1, @customer2, @customer3], [@drink1, @drink2, @drink3])
    @drink1 = Drink.new("Vodka")
    @drink2 = Drink.new("Beer")
    @drink3 = Drink.new("Cider")
    # @customer1 = Customer.new("Ringo")
    # @customer2 = Customer.new("Paul")
    # @customer3 = Customer.new("Mick Jagger")
  end

  def test_pub_name
    assert_equal("The Rubber Duck", @pub.name)

  end

  def test_pub_till
    assert_equal(100, @pub.till_check)
  end

  def test_drinks
    assert_equal(3, @pub.number_of_drinks)
  end


end

require('minitest/autorun')
# require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class TestPub < Minitest::Test

  def setup
    @pub = Pub.new("The Rubber Duck", [@customer1, @customer2, @customer3], 100, [@drink1, @drink2, @drink3])
    @drink1 = Drink.new("Vodka", 5)
    @drink2 = Drink.new("Beer", 5)
    @drink3 = Drink.new("Cider", 5)
    @customer1 = Customer.new("Ringo", 20, 16)
    @customer2 = Customer.new("Paul", 30, 18)
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

  def test_customer_has_bought_drink
    @customer1.buy_drink(@drink1)
    @pub.sell_drink(@drink1)
    assert_equal(15, @customer1.wallet)
    assert_equal(95, @pub.till_check)
  end

  def test_is_customer_18__NOPE
    @customer1.check_age(@customer1)
    assert_equal(false, @customer1.check_age(@customer1))
  end

  def test_is_customer_18__OK
    @customer2.check_age(@customer2)
    assert_equal(true, @customer2.check_age(@customer2))
  end



end

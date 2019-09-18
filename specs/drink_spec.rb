require('minitest/autorun')
# require('minitest/rg')
require_relative('../drink.rb')

class TestDrink < Minitest::Test

  def test_name
    @drink = Drink.new("Wine", 5)
    assert_equal("Wine", @drink.name)
  end

  def test_drink_price
    @drink = Drink.new("Wine", 5)
    assert_equal(5, @drink.price)
  end
end

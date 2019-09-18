require('minitest/autorun')
# require('minitest/rg')
require_relative('../drink.rb')

class TestDrink < Minitest::Test

  def test_name
    @drink = Drink.new("Wine", 5, 14)
    assert_equal("Wine", @drink.name)
  end

  def test_drink_price
    @drink = Drink.new("Wine", 5, 14)
    assert_equal(5, @drink.price)
  end

  def test_drink_strength
    @drink = Drink.new("Vodka", 5, 37)
    assert_equal(37, @drink.strength)
  end


end

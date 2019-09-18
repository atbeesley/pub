require('minitest/autorun')
# require('minitest/rg')
require_relative('../pub.rb')

class TestPub < Minitest::Test


  def setup
    @pub = Pub.new("The Rubber Duck", [@customer1, @customer2, @customer3])
    @drink = Drinks.new[@drink1, @drink2, @drink3]
    @customer1 = Customer.new("Ringo")
    @customer2 = Customer.new("Paul")
    @customer3 = Customer.new("Mick Jagger")
  end


end

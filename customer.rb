class Customer

  attr_accessor(:name, :wallet, :age, :drunkenness)

  def initialize(name, wallet, age, drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = 0
  end

  def buy_drink(drink)
    @wallet -= drink.price
    @drunkenness += drink.strength
  end

  def check_age(customer)
    if customer.age >= 18
      return true
    end
    return false
  end



end

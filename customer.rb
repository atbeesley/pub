class Customer

  attr_accessor(:name, :wallet, :age)

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
  end

  def buy_drink(drink)
    @wallet -= drink.price
  end

  def check_age(customer)
    if customer.age >= 18
      return true
    end
    return false
  end



end

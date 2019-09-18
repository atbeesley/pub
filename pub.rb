class Pub

  attr_accessor(:name)

  def initialize(name, customers, till, drinks)
    @name = name
    @customers = customers
    @till = till
    @drinks = drinks
  end

  def till_check
    return @till
  end

  def number_of_drinks
    return @drinks.count()
  end

  def get_drink(drink)
    return @drinks.delete(drink)
  end

  def sell_drink(drink)
    @till -= drink.price
  end


end

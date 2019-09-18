class Pub

  attr_accessor(:name)

def initialize(name, customers, drinks)
@name = name
@customers = customers
@till = 100
@drinks = drinks
end

def till_check
  return @till
end

def number_of_drinks
  return @drinks.count()
end



end

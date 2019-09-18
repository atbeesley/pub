class Pub

  attr_accessor(:name)

def initialize(name, customers)
@name = name
@customers = customers
@till = 100
end

def till_check
  return @till
end

end

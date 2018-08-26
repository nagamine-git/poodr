# Item
class Item
  attr_reader :name, :price

  def initialize(args)
    @name = args[:name]
    @price = args[:price]
  end

  def buy(name, money)
    if money - @price >= 0
      {item: name, money: money - @price}
    else
      false
    end
  end
end

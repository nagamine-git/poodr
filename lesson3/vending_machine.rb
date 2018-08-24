# VendingMachine
class VendingMachine
  attr_reader :items

  def initialize(args)
    @items = args[:items] || {}
  end

  def add(name, price)
    @items.store(name, price)
    @items
  end

  def buy(name)
    @items.find {|key,value| key == name}
  end
end

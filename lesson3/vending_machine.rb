require_relative './item.rb'

# VendingMachine
class VendingMachine
  attr_reader :items

  def initialize(args)
    @items = args[:items] || {}
  end

  def add(item)
    @items.store(item.name, price: item.price)
    @items
  end

  def buy(order)
    found_item = items[order[:name]]
    return '商品か見つかりませんでした' if found_item.nil?
    remining_money = order[:money] - found_item[:price]
    return '残金が足りませんでした' if remining_money < 0
    remining_money
  end
end

require_relative './vending_machine.rb'

vm = VendingMachine.new({})
@money = 1000

item = Item.new(name: 'ポカリ', price: 120)
puts vm.add(item)
item = Item.new(name: 'コーラ', price: 150)
puts vm.add(item)
puts vm.buy(name: 'ポカリ', money: @money)
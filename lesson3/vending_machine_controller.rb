require_relative './vending_machine.rb'

vm = VendingMachine.new({})

puts vm.add('hoge', 100)
puts vm.add('yaea', 100)
puts '==='
puts vm.add('hoge', 100)

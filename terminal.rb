# require_relative './classes/inventory.rb'
require_relative './classes/terminal.rb'

# Setting per-item prices and deals
terminal = Terminal.new
terminal.set_price("A", 2.00)
terminal.set_price("B", 12.00)
terminal.set_price("C", 1.25)
terminal.set_price("D", 0.15)
terminal.set_deal("A", 4, 7.00)
terminal.set_deal("C", 6, 6.00)


terminal = Terminal.new
terminal.scan("A")
terminal.scan("B")
terminal.scan("C")
terminal.scan("D")
terminal.scan("A")
terminal.scan("B")
terminal.scan("A")
terminal.scan("A")
puts terminal.total
# puts 32.4

terminal = Terminal.new
terminal.scan("C")
terminal.scan("C")
terminal.scan("C")
terminal.scan("C")
terminal.scan("C")
terminal.scan("C")
terminal.scan("C")
puts terminal.total
# puts 7.25

terminal = Terminal.new
terminal.scan("A")
terminal.scan("B")
terminal.scan("C")
terminal.scan("D")
puts terminal.total
# puts 15.4
 
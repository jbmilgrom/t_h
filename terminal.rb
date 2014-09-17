require_relative './database/inventory.rb'
require_relative './classes/terminal.rb'

# Setting per-item prices and deals
# Note that inventory data persists beyond instances of Terminal
terminal = Terminal.new
terminal.set_price("A", 2.00)
terminal.set_price("B", 12.00)
terminal.set_price("C", 1.25)
terminal.set_price("D", 0.15)
terminal.set_deal("A", 4, 7.00)
terminal.set_deal("C", 6, 6.00)

# terminal instance one
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
# puts $32.40

# terminal instance two
terminal = Terminal.new
terminal.scan("C")
terminal.scan("C")
terminal.scan("C")
terminal.scan("C")
terminal.scan("C")
terminal.scan("C")
terminal.scan("C")
puts terminal.total
# puts $7.25

# terminal instance three
terminal = Terminal.new
terminal.scan("A")
terminal.scan("B")
terminal.scan("C")
terminal.scan("D")
puts terminal.total
# puts $15.40
 

require_relative "cashier"
require_relative "order"
require_relative "print_combinations"

include PrintCombinations

order = Order.new("./menu.txt")

result = PrintCombinations.(Cashier.(order))

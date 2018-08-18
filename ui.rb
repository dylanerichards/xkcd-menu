require_relative "cashier"
require_relative "order"
require_relative "print_combinations"

include PrintCombinations

order = Order.new("./menu.txt")
response = Cashier.(order)

PrintCombinations.(response)

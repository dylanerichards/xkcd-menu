require_relative "cashier"
require_relative "order"
require_relative "print_combinations"

include PrintCombinations

order = Order.new("./menu.txt")
result = Cashier.(order)

error_message = "No combinations found for #{order.cash_on_hand}"

result == error_message ? error_message : PrintCombinations.(result)

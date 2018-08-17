require_relative "cashier"
require_relative "order"

order = Order.new("./test_menu.txt")
result = Cashier.(order)
error_message = "No combinations found for #{order.cash_on_hand}"

if result == error_message
  p error_message
else
  result.each do |combination|
    p combination.map { |combination| "#{combination.name}: $#{combination.price}" }
  end
end

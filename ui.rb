require_relative "cashier"
require_relative "order"

Cashier.(Order.new("./menu.txt")).each do |combination|
  p combination.map { |combination| "#{combination.name} | #{combination.price}" }
end

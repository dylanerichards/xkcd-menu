class Cashier
  attr_accessor :order

  def self.call(order)
    [].tap do |combinations|
      (order.dishes.length + 1).times do |t|
        order.dishes.repeated_combination(t) do |combination|
          combinations << combination
        end
      end
    end.select { |combination| combination.map(&:price).reduce(&:+) == order.cash_on_hand }
  end
end

class Cashier
  attr_accessor :order

  def self.call(order)
    combinations = []

    (order.dishes.length + 1).times do |t|
      order.dishes.repeated_combination(t) do |combination|
        combinations << combination
      end
    end

    matching_combinations = combinations.select { |combination| combination.map(&:price).reduce(&:+) == order.cash_on_hand }

    matching_combinations.length == 0 ? "No combinations found for #{order.cash_on_hand}" : matching_combinations
  end
end


class Cashier
  attr_accessor :order

  def self.call(order)
    combinations = []

    (order.cash_on_hand.to_i).times do |t|
      order.dishes.repeated_combination(t) do |combination|
        combinations << combination
      end
    end

    matching_combinations = combinations.select { |combination| combination.map(&:price).reduce(&:+) == order.cash_on_hand }

    matching_combinations.length == 0 ? "No combinations found for #{order.cash_on_hand}" : matching_combinations
  end
end


require_relative "../dish"
require_relative "../order"
require_relative "../cashier"

describe Cashier do
  describe ".call" do
    it 'returns all the combinations of dishes that add up to the order\'s cash on hand' do
      order = Cashier.(Order.new("./test_menu.txt"))


      expect(order.map { |combination| combination.flatten.map(&:name) }).to eq [
        ["shake"],
        ["fries", "fries"],
        ["fries", "burger"],
        ["burger", "burger"],
      ]
    end
  end
end

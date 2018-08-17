require_relative "../dish"
require_relative "../order"
require_relative "../cashier"

describe Cashier do
  describe ".call" do
    it 'returns all the combinations of dishes that add up to the order\'s cash on hand' do
      order = Cashier.(Order.new("./test_menu.txt"))


      expect(order.map { |combination| combination.flatten.map(&:name) }).to eq [
        ["nuggets", "burger"],
        [
          "nuggets", "nuggets", "nuggets", "nuggets",
          "nuggets", "nuggets",
        ]
      ]
    end

    it 'raises an error when no combinations are found' do
      expect(Cashier.(Order.new("./no_matches_test.txt"))).to eq "No combinations found for 11.0"
    end
  end
end

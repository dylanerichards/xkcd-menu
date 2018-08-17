require "./order"

describe Order do
  describe '.call' do
    it 'takes an order file and returns the menu with the desired amount' do
      order = Order.new("./menu.txt")
      expect(order.dishes.count).to eq 6
      expect(order.cash_on_hand).to eq 15.05


      expect(order.dishes.map(&:name)).to eq [
        "mixed fruit",
        "french fries",
        "side salad",
        "hot wings",
        "mozzarella sticks",
        "sampler plate",
      ]
    end
  end
end

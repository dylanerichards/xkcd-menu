require_relative "./dish"

class Order
  attr_accessor :dishes, :cash_on_hand

  def initialize(order_file_path)
    lines = File.readlines(order_file_path).map { |line| line.split(",") }

    @cash_on_hand = lines[0][0].strip.gsub("$", "").to_f
    @dishes = lines[1..-1].map { |line| Dish.new(name: line[0], price: line[1].strip.gsub("$", "").to_f) }


  end
end

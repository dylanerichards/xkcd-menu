module PrintCombinations
  class << self
    def call(result)
      result.each do |combination|
        p combination.is_a?(String) ? combination : combination.map { |combination| "#{combination.name}: $#{combination.price}" }
      end
    end
  end
end

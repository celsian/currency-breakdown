require_relative 'breaker'
require_relative 'currency'

RSpec.describe "Breaker" do
  describe 'initialize' do
    it 'calculates the change per the currency' do
      breaker = Breaker.new(Currency.new, "5.32", "20")

      expect(breaker.results).to eq( {10.00 => 1, 1.00 => 4, 0.25 => 2, 0.10 => 1, 0.05 => 1, 0.01 => 3} )
    end
  end
end
require_relative 'currency'

RSpec.describe "Currency" do
  describe 'initialize' do
    context 'no denomination is provided' do
      it 'uses the default denomination (USD)' do
        currency = Currency.new

        expect(currency.denominations).to eq([100.00, 50.00, 20.00, 10.00, 5.00, 1.00, 0.25, 0.10, 0.05, 0.01])
      end
    end

    context 'demoniation is provided' do
      it 'uses the provided denomination' do
        currency = Currency.new(20.00, 10.00, 5.00)

        expect(currency.denominations).to eq([20.00, 10.00, 5.00])
      end
    end
  end
end
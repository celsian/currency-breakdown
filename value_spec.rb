require_relative 'value'

RSpec.describe "Value" do
  describe 'intiliaze' do
    it 'sets the change due to the customer' do
      value = Value.new(5.50, 10.00)

      expect(value.change).to eq(4.50)
    end
  end
end
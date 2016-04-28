require_relative 'change'

RSpec.describe "Change" do
  describe 'intiliaze' do
    it 'sets the change due to the customer' do
      change = Change.new(5.50, 10.00)

      expect(change.change).to eq(4.50)
    end
  end
end
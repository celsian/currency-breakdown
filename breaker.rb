require_relative 'value'

class Breaker
  attr_accessor :currency, :value_obj, :results

  def initialize(currency, owed, paid)
    @currency = currency
    @value_obj = Value.new(owed, paid)
    @results = { }

    currency.denominations.each do |currency_amount|
      currency_count = (value_obj.change/currency_amount).floor

      unless currency_count == 0
        @results[currency_amount] = currency_count
        value_obj.change = (value_obj.change-currency_count*currency_amount).round(2)
      end
    end
  end

  def print_change
    puts "Customer's Change:"
    @results.each do |currency, total|
      puts total.to_s + " " + ('%.2f' % currency)
    end
  end
end
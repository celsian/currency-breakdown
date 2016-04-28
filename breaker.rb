require_relative 'change'
require 'bigdecimal'

class Breaker
  attr_accessor :currency, :change_obj, :results

  def initialize(currency, owed, paid)
    @currency = currency
    @change_obj = Change.new(BigDecimal.new(owed), BigDecimal.new(paid))
    @results = { }
    find_change
  end

  def find_change
    currency.denominations.each do |currency_amount|
      currency_count = (change_obj.change/currency_amount).floor

      unless currency_count == 0
        @results[currency_amount] = currency_count
        change_obj.change = change_obj.change-currency_count*currency_amount
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
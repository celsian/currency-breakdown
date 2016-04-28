require_relative 'breaker'
require_relative 'currency'

class Runner
  currency = Currency.new()

  print "Enter amount owed: "
  owed = gets.chomp
  print "Enter amount paid: "
  paid = gets.chomp

  puts ""
  Breaker.new(currency, owed, paid).print_change
end
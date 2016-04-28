class Value
  attr_accessor :change

  def initialize(owed, paid)
    @change = (paid - owed).round(2)
  end
end
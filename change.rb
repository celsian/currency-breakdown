class Change
  attr_accessor :change

  def initialize(owed, paid)
    @change = paid - owed
  end
end